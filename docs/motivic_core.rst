The motivic core
================

What “motive” means in this proof
---------------------------------

A motive is used here as an object in a triangulated category in which an
algebraic variety has a functorial cohomological avatar.  Localization turns
a closed subvariety and its complement into an exact triangle; purity
identifies the closed term with a Tate twist when the embedding is regular.
These operations let the proof encode a quadric together with its coordinate
faces without choosing a particular cohomology theory.

The object attached to the tetrahedron
--------------------------------------

The universal Gram quadric, the coordinate simplex, and all their
intersections form an alternating face diagram.  Its stable totalization,
with the standard weight-two normalization, is the single relative motive
used in the proof.  Splitting the quadric and its faces leaves only
:math:`\mathbb Q(0)`, five ordinary copies and one Artin-sign copy of weight
one, and :math:`\mathbb Q(2)`.

Frames and the coproduct
------------------------

A frame chooses a map from the bottom Tate object and a map to the top Tate
object.  Its coefficient remembers the intervening extension data.  Cutting
the three-step weight filtration in the middle gives the reduced coproduct

.. math::

   \overline\Delta[Q,M]=\sum_e L_e\otimes A_e.

The first factor is the complementary edge-length coordinate and the second
is the angle coordinate.  The manuscript derives this order and the
complementary indexing from the dual face geometry and an explicit Schur
complement.

Why zero coproduct is enough
----------------------------

For a category with only these three weight levels, the manuscript proves
directly that the kernel of the reduced coproduct is the group of two-step
extensions between the bottom and top pieces.  Therefore the universal Regge
difference, whose coproduct vanishes, lies in

.. math::

   \operatorname{Ext}^1(\mathbb Q(0),\mathbb Q(2))
   =H^1(U,\mathbb Q(2)).

The rational chart makes the function field of :math:`U` purely
transcendental over :math:`\mathbb Q`.  The imported low-degree invariance and
Borel rank calculation reduce this group to zero.
