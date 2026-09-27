Spherical Regge Scissors
========================

This site is the mathematical guide to the `Spherical Regge Scissors
repository <https://github.com/sashakolpakov/spherical-regge-scissors>`_.  It
explains the single proof path without reproducing the manuscript or adding
theory that the proof does not use.

.. admonition:: Principal result
   :class: theorem

   Assuming the explicit external package E1--E8, every nondegenerate
   spherical tetrahedron is scissors congruent to each elementary Regge mate.

Here scissors congruence means that the two tetrahedra admit finite geodesic
dissections whose pieces can be paired by isometries of the sphere.  The
angles and vertices are arbitrary real data; no algebraicity hypothesis is
made.

.. toctree::
   :maxdepth: 2
   :caption: Proof guide

   overview
   phase_coordinates
   motivic_core
   specialization

.. toctree::
   :maxdepth: 2
   :caption: Sources and verification

   source_interfaces
   formalization
   manuscript
   reproducibility

Current status
--------------

The manuscript is an unattributed pre-release research draft.  Lean checks
the Regge-specific algebra and the complete implication from a typed theorem
package to equidecomposability.  It does not construct that package: the
relative-motivic and fibre-comparison obligations E2--E5 remain external.
There is no independent referee report, so the repository does not establish
the unconditional theorem as settled literature.
