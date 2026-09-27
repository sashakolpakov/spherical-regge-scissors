# Spherical Regge Scissors: pre-release checklist

Public repository name: **Spherical Regge Scissors**<br>
Repository slug: `spherical-regge-scissors`

An item is marked complete only after its stated check has been run on the
files intended for publication.

## Manuscript and dependency freeze

- [x] Keep the focused manuscript under `paper/` with a stable filename and
  an adjacent source-built PDF.
- [x] Retain only the five sections on the critical proof path.
- [x] Reduce the bibliography to the seven entries cited by the manuscript.
- [x] State every imported result separately from the internal argument.
- [x] Keep the draft unattributed rather than infer authorship.

## Mathematical and source audit

- [x] Recheck the monomial phase action, determinant invariance, and both
  orientation charts.
- [x] Check the internal three-level primitive-kernel deduction and expose
  the three-weight calculation itself as E3.
- [x] Check coproduct factor order and the tensor cancellation; expose the
  complementary-edge and Schur-complement identifications as E4.
- [x] Check the split fixed-phase algebra and expose relative finite-etale
  descent as E4.
- [x] Recheck the precise source interfaces for Akopyan--Izmestiev,
  Goncharov, Garkusha, Borel, Brown, and Dupont.
- [x] Recheck rationalization, suspension, and the final finite
  equidecomposition step.
- [x] Encode E1--E8 as typed Lean structure fields rather than project
  axioms, and expose the E2--E5 construction gap in both prose and code.
- [x] Map every labeled manuscript result to a Lean declaration, an exact
  external field, or an explanatory definition.

## Reproducible release files

- [x] Complete a forced manuscript build with no unresolved citations or
  references, duplicate labels, missing glyphs, box warnings, or BibTeX
  warnings, including no pdfTeX font-expansion notice.
- [x] Build the pinned Lean project and audit 22 public declarations with
  only `propext`, `Quot.sound`, and `Classical.choice` reported.
- [x] Reject `sorry`, `admit`, project `axiom`, `opaque`, `unsafe`, `partial`,
  and `extern` declarations in the formal sources.
- [x] Check all 22 labeled manuscript items against the machine-readable
  formal-coverage manifest and human-readable map.
- [x] Check all 77 fields in the six Lean trust structures against the
  exhaustive E1--E8 ownership map.
- [x] Complete a strict warning-as-error Sphinx build.
- [x] Visually inspect the title and contents, principal theorem, final
  suspension-removal argument, and bibliography pages.
- [x] Resolve every relative Markdown link.
- [x] Pass the public-source hygiene scan.
- [x] Rebuild the PDF in an isolated path and obtain the same SHA-256 digest.
- [x] Match the final PDF page count and digest to `RELEASE_MANIFEST.md`.

## Publication

- [x] Commit the exact verified tree on `main`.
- [x] Create and push the public `sashakolpakov/spherical-regge-scissors`
  repository.
- [x] Repeat the release checks from a fresh clone of the committed tree.
- [x] Deploy and retrieve the strict Sphinx guide through GitHub Pages.
