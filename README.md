# Spherical Regge Scissors

This repository contains a focused manuscript and Lean development for a
conditional proof that every nondegenerate spherical tetrahedron is scissors
congruent to each elementary Regge mate. The internal Regge algebra and the
deduction from an explicit external theorem package are machine checked. The
relative motivic and comparison bridge named E2--E5 in the manuscript remains
an input, not a theorem silently supplied by ordinary homology or by Mathlib.

The manuscript is an **unattributed pre-release research draft**. It is not a
substitute for independent expert review, and the theorem should not yet be
cited as settled literature on the strength of this repository alone. The
source passes the documented release build and log scan, the cited theorem
interfaces have been checked against their primary sources, and the internal
critical path has undergone several adversarial audits. The accompanying Lean
project machine-checks the finite algebra and the conditional implication,
but does not construct motives, motivic cohomology, algebraic K-theory, or
spherical scissors groups from foundations.

The mathematical guide is published at
<https://sashakolpakov.github.io/spherical-regge-scissors/>. It explains the
logical route, the phase-coordinate calculation, the motivic core, and the
final specialization without introducing theory not used by the proof.

## Entry points

| Item | Contents |
|---|---|
| [`paper/spherical-regge-scissors.pdf`](paper/spherical-regge-scissors.pdf) ([TeX](paper/spherical-regge-scissors.tex)) | *The Spherical Regge Scissors Theorem: A Conditional Proof through an Explicit Weight-Two Contract*. This is the mathematical starting point. |
| [`formal/README.md`](formal/README.md) | Scope, build instructions, and trust boundary for the Lean development. |
| [`formal/MANUSCRIPT_MAP.md`](formal/MANUSCRIPT_MAP.md) | Exact map from manuscript steps to Lean declarations or external interface fields. |
| [`formal/contract_map.json`](formal/contract_map.json) | Exhaustive machine-checked assignment of all 77 trust-structure fields to E1--E8. |
| [`SELF_CONTAINEDNESS_AUDIT.md`](SELF_CONTAINEDNESS_AUDIT.md) | Audit of definition closure and the remaining E2--E5 external boundary. |
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
3. invoke the explicitly stated relative-motive package, including its three
   weight pieces, reduced coproduct, Artin descent, and fibre comparison;
4. identify the only possible framed defect, through that package, with a class in
   \(H^1(U,\mathbb Q(2))\), which vanishes by the stated
   Garkusha--Borel input; and
5. use Goncharov's weight-two comparison, spherical map, and the standard
   scissors-group results recorded in the manuscript to recover a finite
   spherical equidecomposition.

The manuscript defines the elementary notions needed to read these steps,
including motives, Tate and Artin objects, filtrations, framed coefficients,
and the coefficient coproduct. Those definitions explain the meaning of
E2--E5; they do not construct the required relative category. General motivic
theory, alternative proof programs, and unrelated scissors-congruence results
are intentionally absent.

## Research and audit records

- [`STATUS.md`](STATUS.md) distinguishes the complete conditional implication
  from construction of its external contract, independent validation, and
  publication.
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
complete verification command additionally uses the Lean toolchain pinned in
`formal/lean-toolchain`, the Mathlib revision pinned in
`formal/lake-manifest.json`, Python 3.12 or later, `ripgrep`, Ghostscript, and
the exact Sphinx packages pinned in `docs/requirements.txt`. The standalone
repository scripts remain compatible with Python 3.10 or later.

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
the conditional Lean formalization, the critical-path guide, and the release
checks. No unconditional formal proof, archival release, journal acceptance,
or repository-wide license is claimed.
