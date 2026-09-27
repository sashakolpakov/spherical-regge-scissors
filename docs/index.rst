Spherical Regge Scissors
========================

This site is the mathematical guide to the `Spherical Regge Scissors
repository <https://github.com/sashakolpakov/spherical-regge-scissors>`_.  It
explains the single proof path without reproducing the manuscript or adding
theory that the proof does not use.

.. admonition:: Principal result
   :class: theorem

   Every nondegenerate spherical tetrahedron is scissors congruent to each of
   its elementary Regge mates.

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
   manuscript
   reproducibility

Current status
--------------

The manuscript is an unattributed pre-release research draft.  Its sources,
citation interfaces, and internal critical path have been audited, but there
is no machine-checked formalization or independent referee report.  The
repository should therefore not be cited as establishing settled literature
without further expert verification.
