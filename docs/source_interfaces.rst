External source interfaces
==========================

The conditional proof uses the following interfaces.  The manuscript marks
which are published results and which stronger relative bridges are still
assumptions.

.. list-table::
   :header-rows: 1
   :widths: 22 36 42

   * - Source or interface
     - Imported fact
     - Role in the proof
   * - E1: Akopyan--Izmestiev
     - Regge action on lengths and angles, existence, and volume equality
     - Starts the comparison and later kills the suspension kernel
   * - E2--E5: relative bridge
     - Relative coefficients, strict three-weight kernel, coproduct with
       Artin-trace descent, coproduct-compatible specialization, and fibre
       endpoint equal to :math:`c_G`
     - Supplies the family-level data not obtained from field-level sources
   * - Garkusha and Borel
     - Low-degree birational invariance and the rational rank of
       :math:`K_3(\mathbb Q)`
     - Motivate the vanishing clause of E3
   * - E6: Goncharov
     - Field-level primitive comparison, spherical map, and injectivity
     - Sends the specialized quadric defect toward spherical scissors
   * - E7--E8: Dupont and cancellation inputs
     - Generator-compatible presentation comparison, rationalization
       injection, suspension/area facts, and finite cancellation
     - Return from the reduced target to an equidecomposition

Brown's normalization is used to state the intended relative coefficient.
It does not by itself prove E2--E5.

The determinant identity and invariance, rational chart formulas, Regge
matrix algebra, phase involution, four-channel tensor cancellation, and final
diagram chase are Lean checked.  The relative construction, strict-heart
comparison, relative coproduct formula, sign-Artin descent, and fibre endpoint
comparison are precisely E2--E5 and are not claimed as internally proved.
In particular, primitivity at a complex fibre is transported through E4's
commuting coproduct square; it is not inferred from an untyped label.
