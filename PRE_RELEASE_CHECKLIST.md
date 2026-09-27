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
- [x] Recheck the three weight pieces and the three-level primitive-kernel
  lemma.
- [x] Recheck coproduct factor order, complementary edge indexing, and the
  Schur-complement length calculation.
- [x] Recheck split and connected fixed-phase descent.
- [x] Recheck the precise source interfaces for Akopyan--Izmestiev,
  Goncharov, Garkusha, Borel, Brown, and Dupont.
- [x] Recheck rationalization, suspension, and the final finite
  equidecomposition step.

## Reproducible release files

- [x] Complete a forced manuscript build with no unresolved citations or
  references, duplicate labels, missing glyphs, box warnings, or BibTeX
  warnings; record and count the two allowlisted pdfTeX font-expansion notices.
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
