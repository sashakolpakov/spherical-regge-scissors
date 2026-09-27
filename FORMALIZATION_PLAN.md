# Lean formalization plan

The goal is a kernel-checked formalization of the manuscript's internal
mathematics, conditional only on individually named external statements.  A
field of an input structure is a theorem hypothesis, not a Lean axiom.  The
formal project must contain no `sorry`, `admit`, project `axiom`, `opaque`,
`unsafe`, `partial`, or `extern` declaration.

## Deliverables

- [x] Pin a reproducible Lean and Mathlib toolchain under `formal/`.
- [x] Prove the finite Regge-matrix and phase-action identities.
- [x] Prove the determinant-chart and fixed-phase-cover algebra represented in
  the formal model.
- [x] Prove the four-moving-channel Regge cancellation, hence the full
  two-fixed-plus-four-moving coproduct equality, as a bilinear
  identity.
- [x] State the relative motivic, arithmetic, Goncharov-comparison, and
  spherical-scissors inputs as narrow typed structures.
- [x] Prove the primitive-kernel, specialization, injectivity, suspension,
  volume, and cancellation deductions from those structures.
- [x] Supply an inhabited contract model and a countermodel showing that the
  conclusion is not hidden in the bare geometric data.
- [x] Map every manuscript proof step to a Lean declaration or to one exact
  external input in `formal/MANUSCRIPT_MAP.md`.
- [x] Revise the manuscript so that relative motives, coproduct compatibility,
  Artin descent, and the fibre comparison are not silently treated as
  automatic consequences of ordinary homology.
- [x] Add automated source, axiom-output, manuscript-contract, and build checks.
- [x] Build Lean, rebuild the manuscript and documentation, reproduce the PDF,
  and pass the complete release verification from a fresh clone.

## Trust boundary

The formalization does not construct Voevodsky or Beilinson motives, Quillen
algebraic K-theory, Goncharov's quadric complex, or spherical scissors theory
from foundations.  It instead quantifies over packages containing precisely
the external theorems used from those subjects.  The package is deliberately
finer than a single “motivic formalism” assumption: relative face motives,
their three-level filtration, the relative coproduct formula, finite-etale
trace compatibility, specialization, and comparison with Goncharov's map are
separate fields.

## Completion criterion

The goal is complete only when `make verify` checks the committed artifact,
the manuscript and documentation, all Lean sources, all printed axiom
dependencies, and an isolated byte-for-byte PDF rebuild, and when a fresh
clone can reconstruct and build the pinned Lean project.
