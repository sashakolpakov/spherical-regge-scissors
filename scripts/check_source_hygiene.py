#!/usr/bin/env python3
"""Check the publishable tree for local paths, secrets, and draft debris."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SELF = Path(__file__).resolve()
SKIP_PARTS = {".git", "_build", "__pycache__"}
BINARY_SUFFIXES = {".pdf", ".png", ".jpg", ".jpeg"}
GENERATED_SUFFIXES = {
    ".aux",
    ".bbl",
    ".blg",
    ".fdb_latexmk",
    ".fls",
    ".log",
    ".out",
    ".synctex.gz",
    ".toc",
    ".pyc",
}
FORBIDDEN_TEXT = {
    "absolute local path": re.compile(r"(?:/Users/|/private/(?:tmp|var)/|[A-Za-z]:\\\\Users\\\\)"),
    "private key": re.compile(r"-----BEGIN (?:RSA |OPENSSH |EC )?PRIVATE KEY-----"),
    "GitHub token": re.compile(r"(?:ghp_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{30,})"),
    "AWS access key": re.compile(r"AKIA[0-9A-Z]{16}"),
    "draft placeholder": re.compile(r"\b(?:TODO|FIXME|XXX)\b"),
    "agent transcript": re.compile(r"\b(?:ChatGPT|Codex|Claude)\b", re.IGNORECASE),
    "malformed TeX spacing command": re.compile(r"(?<!\\)\bqquad\b"),
}


def ignored(path: Path) -> bool:
    return any(part in SKIP_PARTS for part in path.relative_to(ROOT).parts)


def generated(path: Path) -> bool:
    name = path.name
    return any(name.endswith(suffix) for suffix in GENERATED_SUFFIXES)


def candidate_paths() -> list[Path]:
    if (ROOT / ".git").is_dir():
        result = subprocess.run(
            ["git", "ls-files", "-z"],
            cwd=ROOT,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            check=False,
        )
        if result.returncode == 0:
            return [
                ROOT / raw.decode("utf-8")
                for raw in result.stdout.split(b"\0")
                if raw
            ]
    return [path for path in ROOT.rglob("*") if not ignored(path)]


def main() -> int:
    failures: list[str] = []
    text_files = 0

    for path in sorted(candidate_paths()):
        if ignored(path):
            continue
        relative = path.relative_to(ROOT)
        if path.is_symlink():
            failures.append(f"unexpected symlink: {relative}")
            continue
        if not path.is_file():
            continue
        if generated(path):
            failures.append(f"generated build file present: {relative}")
            continue
        if path.stat().st_size > 5 * 1024 * 1024:
            failures.append(f"file exceeds 5 MiB: {relative}")
        if path.suffix.lower() in BINARY_SUFFIXES:
            continue
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            failures.append(f"unexpected non-UTF-8 file: {relative}")
            continue
        text_files += 1
        if path.resolve() != SELF:
            for label, pattern in FORBIDDEN_TEXT.items():
                if pattern.search(text):
                    failures.append(f"{relative}: contains {label}")

    if failures:
        print("\n".join(failures), file=sys.stderr)
        return 1
    print(f"Source hygiene check: {text_files} UTF-8 text files clean")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
