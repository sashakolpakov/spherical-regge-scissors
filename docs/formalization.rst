Lean formalization
==================

What is checked
---------------

The Lean project checks the Regge matrix and monomial phase involutions, the
Gram-determinant polynomial and its Regge invariance, both rational-chart
identities, the fixed-phase deck algebra, the normalized four-channel tensor
cancellation, the primitive-kernel deduction, specialization/injectivity
diagram chase, suspension-volume argument, and final implication to a typed
finite-list equidecomposition certificate.

The main theorem is universally quantified over a ``ProofContract``.  Each
deep fact is therefore a hypothesis supplied by the caller, not a global Lean
axiom.  Automated checks reject proof placeholders and trust-broadening
project declarations and audit the axioms printed for the public theorems.

What is not checked
-------------------

The pinned development does not import an implementation of the particular
relative mixed Artin--Tate motives, Goncharov quadric-scissors complex, or
spherical scissors groups required here.  It consequently does not construct
Voevodsky motives, motivic cohomology, algebraic K-theory, or those scissors
groups.  E2--E5 name the missing relative construction, strict filtration,
coproduct/trace, and fibre-comparison obligations separately.

Coverage and build
------------------

``formal/MANUSCRIPT_MAP.md`` maps each manuscript item to a Lean declaration
or an external interface field.  ``formal/coverage.json`` is the
machine-readable version checked during ``make verify``.  To build only the
formal project, run:

.. code-block:: console

   $ make formal

The exact Lean and Mathlib revisions are pinned inside ``formal/``.
