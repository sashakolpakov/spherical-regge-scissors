The motivic core
================

What “motive” means here
------------------------

A motive is intended here as an object in a triangulated category in which an
algebraic variety has a functorial cohomological avatar.  Localization turns a
closed subvariety and its complement into an exact triangle; purity identifies
the closed term with a Tate twist when the embedding is regular.  This retains
extension data independently of a particular realization.

It cannot be replaced by an ordinary complex of rational vector spaces.
Rational vector spaces form a semisimple category, so the endpoint
``Ext`` group would vanish for the wrong formal reason and discard exactly the
obstruction the proof must control.

The intended object
-------------------

The universal Gram quadric, coordinate simplex, and all their intersections
form an alternating face diagram.  The intended weight-two coefficient is the
framed stable totalization of that diagram after internal duality and a Tate
twist.  E2 supplies the relative coefficient and its pullback; E3 supplies the
strict filtration with intended graded pieces

.. math::

   \mathbb Q(0),\qquad
   \mathbb Q(1)^{\oplus 5}\oplus\chi(1),\qquad
   \mathbb Q(2).

The manuscript defines Tate and sign-Artin objects, totalization, frames, and
the required heart so these inputs have precise content.  It does not build
the ambient relative motivic category from foundations.

Frames and the coproduct
------------------------

A frame chooses a bottom map from :math:`\mathbb Q(2)` and a top map to
:math:`\mathbb Q(0)`.  Cutting the strict three-step filtration in the middle
produces a reduced coproduct.  E4 asserts the exact relative formula

.. math::

   \overline\Delta[Q,M]=\sum_e L_e\otimes A_e,

including factor order, complementary indexing, and normalized trace in the
sign-Artin channel.  It also states the commuting specialization square into
the field-level coproduct.  Lean proves the subsequent Regge tensor
cancellation and derives fibre primitivity through that square; it does not
derive E4 from a plain chain complex.

Why zero coproduct is enough
----------------------------

E3 identifies the primitive kernel with the endpoint group

.. math::

   \operatorname{Ext}^1(\mathbb Q(0),\mathbb Q(2))
   =H^1(U,\mathbb Q(2))

and asserts its vanishing.  Garkusha's low-degree invariance and Borel's rank
calculation motivate the last equality, while the relative strict-heart and
heart-to-derived comparisons remain explicitly inside E3.  Given this
identification, Lean checks that zero coproduct forces the universal defect to
be zero.
