# Spherical Regge Scissors

This repository contains a focused manuscript proving that every
nondegenerate spherical tetrahedron is scissors congruent to each of its
elementary Regge mates. The proof passes from the monomial Regge action on
angle phases to a relative weight-two quadric motive, proves that its framed
Regge defect vanishes, and then specializes the resulting identity to the
spherical scissors group.

The manuscript is an **unattributed pre-release research draft**. It is not a
substitute for independent expert review, and the theorem should not yet be
cited as settled literature on the strength of this repository alone. The
source passes the documented release build and log scan, the cited theorem interfaces have been checked against
their primary sources, and the internal critical path has undergone several
adversarial audits; there is no machine-checked formalization.

The mathematical guide is published at
<https://sashakolpakov.github.io/spherical-regge-scissors/>. It explains the
logical route, the phase-coordinate calculation, the motivic core, and the
final specialization without introducing theory not used by the proof.

## Entry points

| Item | Contents |
|---|---|
| [`paper/spherical-regge-scissors.pdf`](paper/spherical-regge-scissors.pdf) ([TeX](paper/spherical-regge-scissors.tex)) | *The Spherical Regge Scissors Theorem: A Self-Contained Proof through Weight-Two Motives*. This is the complete proof and the recommended starting point. |
| [`CRITICAL_PATH_AUDIT.md`](CRITICAL_PATH_AUDIT.md) | Dependency-by-dependency account of what is proved internally and what is imported. |
| [`STATUS.md`](STATUS.md) | Conservative proof and review status of the theorem and its essential components. |

The manuscript source is split into five ordered modules under
[`paper/sections/`](paper/sections/). All citations resolve through the sole
audited database [`paper/biblio.bib`](paper/biblio.bib).

## Proof architecture

The proof has one continuous path:

1. encode the six dihedral angles by phase variables and write the elementary
   Regge involution as a monomial transformation;
2. prove invariance of the Gram determinant and cover the resulting
   orientation double cover by rational charts;
3. construct the relative quadric motive and compute its three weight pieces
   and reduced coproduct;
4. identify the only possible framed defect with a class in
   \(H^1(U,\mathbb Q(2))\), which vanishes by the stated
   Garkusha--Borel input; and
5. use Goncharov's weight-two comparison, spherical map, and the standard
   scissors-group results recorded in the manuscript to recover a finite
   spherical equidecomposition.

The manuscript defines the elementary notions needed to read these steps,
including motives, Tate and Artin objects, filtrations, framed coefficients,
and the coefficient coproduct. General motivic theory, alternative proof
programs, and unrelated scissors-congruence results are intentionally absent.

## Research and audit records

- [`STATUS.md`](STATUS.md) distinguishes a complete written argument from
  independent validation and publication.
- [`AUDIT_LOG.md`](AUDIT_LOG.md) records the mathematical, source, notation,
  and release audits performed on this draft.
- [`CRITICAL_PATH_AUDIT.md`](CRITICAL_PATH_AUDIT.md) lists every essential
  transition in the proof and its dependency status.
- [`PRE_RELEASE_CHECKLIST.md`](PRE_RELEASE_CHECKLIST.md) records the tests
  applied to the public tree.
- [`RELEASE_MANIFEST.md`](RELEASE_MANIFEST.md) records the checked-in PDF's
  page count, digest, toolchain, and verification command.

## Rebuilding

A current TeX Live installation with `latexmk` builds the manuscript. The
complete verification command additionally uses Python 3.12 or later,
`ripgrep`, Ghostscript, and the exact Sphinx packages pinned in
`docs/requirements.txt`. The standalone repository scripts remain compatible
with Python 3.10 or later.

Run every local release check from the repository root with:

```sh
make verify
```

Build only the manuscript with:

```sh
make paper
```

Build the documentation with:

```sh
python3 -m pip install -r docs/requirements.txt
make check-docs
```

The direct manuscript command is:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error \
  -outdir=paper paper/spherical-regge-scissors.tex
```

The checked-in PDF is a release artifact. LaTeX intermediates and generated
Sphinx output are ignored. The fixed build epoch and timezone in
`.latexmkrc` and the Makefile allow an isolated clean build to reproduce the
PDF byte for byte.

## Source and release status

The public `main` branch contains the manuscript source, its source-built PDF,
the critical-path guide, and the release checks. No formal proof is claimed,
no archival release or journal acceptance is implied, and no repository-wide
license is asserted.
