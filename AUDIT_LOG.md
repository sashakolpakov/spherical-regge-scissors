# Audit log

This log records checks performed on the focused manuscript and on the files
prepared for public release.  It distinguishes mathematical review from
automated build checks.

## 26 September 2026: primary-source interfaces

The exact passages used from the following sources were checked against the
primary text:

- Akopyan--Izmestiev for the spherical Regge transformation and volume
  equality;
- Goncharov for the weight-two coefficient/scissors comparison and the
  spherical homomorphism;
- Garkusha for the low-degree birational and purely transcendental invariance
  of semilocal weight-two motivic cohomology;
- Borel for the rational \(K_3(\mathbb Q)\) vanishing used after the Garkusha
  reduction;
- Brown for the normalization of the quadric relative motive; and
- Dupont for the rational-vector and spherical scissors-group inputs used in
  the final passage.

The manuscript states these external inputs separately from the calculations
performed inside the proof.  It does not invoke Goncharov's general explicit
chain-map conjecture.

## 26--27 September 2026: adversarial proof audits

Separate passes checked the algebraic phase charts, the three-weight
categorical lemma, the coproduct calculation, descent through the fixed-phase
cover, and the final scissors comparison.  The resulting repairs include:

- fixing the tensor-factor order in the reduced coproduct;
- matching every angle channel with its complementary length channel;
- writing the Schur-complement computation that produces the physical edge
  length;
- making the half-phase Hadamard orthogonality calculation explicit;
- separating the split and connected cases of the fixed-phase double cover;
- identifying the descent map as the normalized twisted trace in the Artin
  sign channel;
- keeping the auxiliary induced-orientation choice fixed when a quadric
  ruling is selected;
- distinguishing the integral spherical scissors complex from its rational
  and parity-twisted forms; and
- explaining why rationalization and spherical suspension can both be
  removed at the end.

The final hostile logic pass reported no remaining fatal or major defect in
the patched critical path.  This is an internal audit result, not an
independent referee report.

## 27 September 2026: exposition and scope

The manuscript was separated from the broader working directory and rebuilt
using only one driver, five ordered section files, one macro file, and the
seven bibliography entries actually cited.  Definitions of motives, Tate and
Artin objects, weight filtrations, framed coefficients, coefficient
coalgebras, and specialization were retained because they are needed to read
the proof.  Alternative chain constructions and theory not used on the proof
path were excluded.

The public-release audit also checks:

- unresolved citations, references, duplicate labels, missing glyphs, and
  layout warnings;
- bibliography-key coverage and absence of unused entries;
- local Markdown and Sphinx links;
- absolute local paths, secret-like material, draft placeholders, and build
  debris;
- byte-for-byte PDF reproducibility in an isolated directory; and
- agreement of the checked-in artifact with the release manifest.

The 27 September release candidate passed the complete `make verify` target.
The title and contents, principal theorem, final suspension-removal argument,
and bibliography pages were also rendered and inspected visually; no
release-blocking defect was found.

The exact commands and artifact digest are recorded in
[`RELEASE_MANIFEST.md`](RELEASE_MANIFEST.md).
