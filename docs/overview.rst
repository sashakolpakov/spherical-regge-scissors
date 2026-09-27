Proof overview
==============

Let :math:`T` be a nondegenerate spherical tetrahedron and :math:`R(T)` an
elementary Regge mate.  The manuscript proves the desired scissors statement
conditionally on the external package E1--E8.  The relative-motivic bridge is
not hidden under the phrase “standard formalism”: its components are E2--E5.

Angle geometry to algebraic parameters
--------------------------------------

Exponentiating the six dihedral angles turns the additive Regge formulas into
a monomial involution.  The determinant of the angle Gram matrix is invariant,
and its square root gives an orientation cover.  Two explicit rational charts
cover every physical tetrahedron/Regge pair.  The polynomial identities in
this transition are checked in Lean; the geometric Regge theorem is E1.

Parameters to a three-weight object
-----------------------------------

Over a suitable Regge-stable open set :math:`U`, E2 supplies the coefficient
intended to come from the Gram quadric and its four coordinate facets.  E3
supplies its strict three-weight comparison, whose intended graded pieces are

.. math::

   \mathbb Q(0),\qquad
   \mathbb Q(1)^{\oplus 5}\oplus\chi(1),\qquad
   \mathbb Q(2).

The Artin character :math:`\chi` records the half-phase that cannot be chosen
rationally on :math:`U`.  The manuscript explains these objects, but relative
existence and strict filtration are assumptions E2--E3.

Coproduct equality to class equality
------------------------------------

E4 identifies the reduced coproduct with six length/angle channels, makes
the possible :math:`\chi`-channel compatible with finite-etale trace, and
commutes with the field-level coproduct under specialization.  Lean
checks that the Regge matrix preserves the four moving channels; the two fixed
channels agree directly.  E3 then identifies the primitive kernel with
:math:`H^1(U,\mathbb Q(2))` and supplies its vanishing.

Universal equality to finite equidecomposition
----------------------------------------------

E5 identifies the specialized endpoint with Goncharov's field-level class.
E6--E7 send its vanishing to the rationalized reduced spherical scissors
group, and E8's rationalization injection returns to the integral reduced
group.  The E8 suspension, area, volume, and cancellation statements,
together with E1 volume equality, then yield finite scissors congruence.  Lean
checks this complete conditional diagram chase.
