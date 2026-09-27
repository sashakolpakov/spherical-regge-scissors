Reproducibility
===============

From a clone of the repository, run:

.. code-block:: console

   $ make verify

This command builds the pinned Lean project, rejects proof placeholders and
undocumented axioms, checks manuscript-to-interface coverage, performs a
forced LaTeX build, checks the TeX and BibTeX logs, validates the bibliography
and local links, scans the public source tree, builds this documentation with
warnings treated as errors, rebuilds the manuscript in an isolated temporary
path, and compares the PDF bytes with the checked-in artifact and release
manifest.

The manuscript alone can be rebuilt with:

.. code-block:: console

   $ make paper

Required tools
--------------

The manuscript needs a current TeX Live distribution and ``latexmk``.  The
formal build uses the toolchain in ``formal/lean-toolchain`` and the Mathlib
revision in ``formal/lake-manifest.json``.  The full verification target also
needs Python 3.12 or later, ``ripgrep``, Ghostscript, and the Sphinx/Furo
versions pinned in ``docs/requirements.txt``.  The standalone Python checks
remain compatible with Python 3.10 or later.

Deterministic artifact
----------------------

The Makefile and ``.latexmkrc`` fix ``SOURCE_DATE_EPOCH``,
``FORCE_SOURCE_DATE``, and ``TZ``.  The isolation check copies the manuscript
sources without preserving their modification times and builds them under a
different absolute path.  The resulting SHA-256 digest must equal the digest
recorded in ``RELEASE_MANIFEST.md``.
