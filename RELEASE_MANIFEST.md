# Pre-release candidate manifest

Candidate name: **Spherical Regge Scissors**<br>
Repository slug: `spherical-regge-scissors`<br>
Repository URL: <https://github.com/sashakolpakov/spherical-regge-scissors><br>
Documentation URL: <https://sashakolpakov.github.io/spherical-regge-scissors/><br>
Verification date: 27 September 2026 (Europe/Zurich)

This manifest describes the initial public pre-release candidate.  No
archival tag, journal acceptance, authorship attribution, or independent
expert validation is claimed.

## Manuscript artifact

| Artifact | Pages | SHA-256 | Provenance |
|---|---:|---|---|
| `paper/spherical-regge-scissors.pdf` | 35 | `2e2289dacc83cfe97cd3f6bc3adfea513ee2f7c507f58acb36d63102bd3fe306` | Reproducibly built from the adjacent TeX driver, five section files, macro file, and seven-entry bibliography; unattributed research draft |

The repository fixes `SOURCE_DATE_EPOCH=1790467200`,
`FORCE_SOURCE_DATE=1`, and `TZ=UTC` through `.latexmkrc` and the root
Makefile.  The isolation check copies the TeX sources without preserving
modification times, rebuilds under a different absolute path, and requires
the resulting PDF digest to match the checked-in artifact byte for byte.

## Toolchain

- Latexmk 4.87
- pdfTeX 3.141592653-2.6-1.40.29 (TeX Live 2026/Homebrew)
- BibTeX 0.99e
- Ghostscript 10.07.0 for page-count verification
- Python 3.10 or later for the repository scripts; verified with Python 3.14.6
- ripgrep for final TeX/BibTeX log scans
- Sphinx 9.1.0 and Furo 2025.12.19 for the mathematical guide

## Verification result

The command

```sh
make verify
```

completed successfully on this candidate.  It performs a forced manuscript build,
validates exact citation coverage, scans final TeX and BibTeX logs, checks
public-source hygiene and relative Markdown links, builds the Sphinx guide
with warnings treated as errors, rebuilds the PDF in an isolated temporary
path, and checks the artifact set, page count, and SHA-256 digest against this
manifest.

The final pdfTeX log contains exactly two engine notices reading `pdfTeX
warning (font expansion): font should be expanded before its first use`, one
at the first expanded use in the contents and one in the bibliography.  They
are a known nonblocking interaction with microtype and are explicitly counted
by the Makefile.  The log has no undefined citation or reference, duplicate
label, missing glyph, overfull box, or underfull box warning; the BibTeX log
has no warning.

The same `make verify` target completed successfully both in a fresh local
clone of the committed tree and in a fresh HTTPS clone of the public GitHub
repository, with no generated files or untracked source dependencies copied
from the working directory.  GitHub Pages built and deployed the strict
Sphinx guide successfully, and both public URLs returned HTTP 200.
