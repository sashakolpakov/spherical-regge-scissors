Phase coordinates and rational charts
=====================================

The angle Gram matrix
---------------------

If :math:`\alpha_{ij}` is the internal dihedral angle between facets
:math:`F_i` and :math:`F_j`, the angle Gram matrix is

.. math::

   G_{ii}=1,\qquad G_{ij}=-\cos\alpha_{ij}.

Its determinant is nonzero for a nondegenerate tetrahedron.  Choosing a square
root of :math:`\det G` is the algebraic form of choosing an orientation.

Why the action is monomial
--------------------------

For the four angles :math:`\alpha_j` moved by an elementary Regge involution,
put :math:`a_j=e^{i\alpha_j}` and let :math:`\tau=e^{iS}`, where :math:`S` is
their half-sum.  Thus :math:`\tau^2=\prod_j a_j`, and the Regge formula becomes

.. math::

   a_j\longmapsto \frac{\tau}{a_j}.

Thus every new coordinate is a Laurent monomial in the old coordinates and
the chosen half-product.  “Monomial” here is literal; it does not refer to a
linear approximation.

The determinant calculation
---------------------------

The manuscript expands :math:`\det G` in four elementary Laurent
combinations.  Three symmetric pair sums and one alternating product
combination are separately fixed by :math:`a_j\mapsto\tau/a_j`.  This proves
determinant invariance algebraically, before motives enter.

Orientation and the missing half-phase
--------------------------------------

On the double cover :math:`w^2=\det G`, the combinations

.. math::

   r=w-sx,\qquad r_+=w+sx

produce two explicit rational charts.  Their denominators define principal
opens, and every physical pair belongs to at least one chart.  The omitted
fixed half-phase defines a finite étale double cover :math:`U_p\to U`.  Its
sign representation becomes the Artin summand in the middle weight of the
relative motive.
