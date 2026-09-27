# Audit log

This log distinguishes source review, internal formal verification, and the
remaining mathematical trust boundary.

## 26 September 2026: source interfaces

The cited passages were checked for Akopyan--Izmestiev, Goncharov, Garkusha,
Borel, Brown, and Dupont. That audit supports the field-level and
scissors-theoretic ingredients, but did not locate one theorem supplying the
simultaneous relative construction, strict filtration, Artin-trace
coproduct, and fibre equality required over the parameter space.

## 27 September 2026: motivic boundary correction

An adversarial audit found that the first release treated several
family-level assertions as consequences of generic motivic language. The
manuscript was therefore recast as a conditional theorem with E1--E8.
In particular:

- E2 names relative coefficient construction and functoriality;
- E3 names the exact graded pieces, strict heart, primitive comparison, and
  weight-two vanishing;
- E4 names the relative six-channel coproduct, sign-Artin trace descent, and
  the coproduct-specialization square which supplies fibre primitivity;
- E5 names linear specialization/endpoint maps and the fibre endpoint
  equality with Goncharov's \(c_G\); and
- E6--E8 isolate the field-level injections and spherical-scissors facts.

This correction supersedes the earlier claim that the relative bridge had
been constructed inside the manuscript.

## 27 September 2026: Lean formalization

The project formalizes the finite Regge matrix, phase action, actual
\(4\times4\) Gram determinant formula, determinant-coefficient invariance,
rational charts, fixed-phase deck algebra, normalized four-channel tensor
cancellation, primitive-kernel deduction, derived fibre-kernel membership,
specialization/injectivity chase, suspension-volume argument, and a final
finite-list equidecomposition certificate.

The external facts are fields of structures rather than global axioms. A
finite inhabited model checks consistency of the interface, while a separate
finite countermodel shows that Regge involutivity and equal volume alone do
not force scissors equality. Automated scans reject proof placeholders and
trust-broadening declarations and audit the output of `#print axioms`.

## 27 September 2026: self-containedness and release audit

The definition audit checks that a reader is introduced to motives, the
difference from ordinary rational homology, Tate and sign-Artin objects,
totalization, strict hearts, frames, coproducts, endpoint extensions, and the
specialization interface before they are used. A machine-readable coverage
file classifies every labeled proof item as Lean-checked, external, mixed
Lean/external, or an explanatory definition.
An independent contract-parity manifest assigns every field of the six Lean
trust structures to E1--E8; the checker currently closes all 77 fields.

The release checks cover bibliography keys, TeX references and log warnings,
Markdown links, source hygiene, strict Sphinx documentation, Lean build and
axiom output, manuscript-contract coverage, isolated PDF reproducibility, and
manifest page count and digest.

The resulting status is deliberately two-level: the conditional implication
is self-contained and machine checked; the unconditional theorem remains open
in this repository until E2--E5 are constructed.
