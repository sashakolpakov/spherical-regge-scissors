.PHONY: all paper papers paper-force papers-force docs check-docs docs-clean \
	check-bibliography check-source-hygiene check-tex-logs check-links \
	check-artifact check-pdf-reproducibility check-manifest verify \
	verify-after-artifact clean

SOURCE_DATE_EPOCH := 1790467200
FORCE_SOURCE_DATE := 1
TZ := UTC
export SOURCE_DATE_EPOCH FORCE_SOURCE_DATE TZ

PAPER_STEM := spherical-regge-scissors
PAPER_SOURCE := paper/$(PAPER_STEM).tex
PAPER_PDF := paper/$(PAPER_STEM).pdf
PAPER_INPUTS := $(PAPER_SOURCE) paper/macros.tex paper/biblio.bib \
	$(wildcard paper/sections/*.tex) .latexmkrc

all: paper docs

paper papers: $(PAPER_PDF)

$(PAPER_PDF): $(PAPER_INPUTS)
	latexmk -pdf -interaction=nonstopmode -halt-on-error \
		-outdir=paper $(PAPER_SOURCE)

paper-force papers-force:
	latexmk -pdf -gg -interaction=nonstopmode -halt-on-error \
		-outdir=paper $(PAPER_SOURCE)

docs:
	sphinx-build -b html -W --keep-going -n docs docs/_build/html

check-docs: docs

check-bibliography:
	python3 scripts/check_bibliography.py

check-source-hygiene:
	python3 scripts/check_source_hygiene.py

check-tex-logs: paper-force
	@tex_scan_rc=0; \
	rg -n 'undefined (citations|references)|There were undefined references|Citation .* undefined|Reference .* undefined|multiply[- ]defined|Label\(s\) may have changed|Rerun to get cross-references right|Package hyperref Warning|Missing character|Overfull \\[hv]box|Underfull \\[hv]box' \
		paper/$(PAPER_STEM).log || tex_scan_rc=$$?; \
	if [ $$tex_scan_rc -eq 0 ]; then \
		echo 'LaTeX release-blocker scan failed.'; exit 1; \
	elif [ $$tex_scan_rc -eq 1 ]; then \
		echo 'LaTeX release-blocker scan: clean'; \
	else \
		echo 'LaTeX release-blocker scan could not be completed.'; exit $$tex_scan_rc; \
	fi
	@font_notice_count=$$(rg -c 'pdfTeX warning \(font expansion\): font should be expanded before its first use' \
		paper/$(PAPER_STEM).log || true); \
	if [ "$${font_notice_count:-0}" -ne 2 ]; then \
		echo "Expected exactly two allowlisted pdfTeX font-expansion notices; found $${font_notice_count:-0}."; exit 1; \
	else \
		echo 'Allowlisted pdfTeX font-expansion notices: 2'; \
	fi
	@bib_scan_rc=0; \
	rg -n 'Warning--|error message' paper/$(PAPER_STEM).blg || bib_scan_rc=$$?; \
	if [ $$bib_scan_rc -eq 0 ]; then \
		echo 'BibTeX release-log check failed.'; exit 1; \
	elif [ $$bib_scan_rc -eq 1 ]; then \
		echo 'BibTeX release-log check: clean'; \
	else \
		echo 'BibTeX release-log scan could not be completed.'; exit $$bib_scan_rc; \
	fi

check-links:
	python3 scripts/check_markdown_links.py

check-artifact:
	python3 scripts/check_release_manifest.py

check-pdf-reproducibility: paper-force
	python3 scripts/check_pdf_reproducibility.py

check-manifest: check-pdf-reproducibility
	python3 scripts/check_release_manifest.py

verify: check-artifact
	$(MAKE) verify-after-artifact

verify-after-artifact: check-bibliography check-source-hygiene check-tex-logs \
	check-links check-docs check-manifest

docs-clean:
	$(RM) -r docs/_build

clean:
	latexmk -c -outdir=paper $(PAPER_SOURCE)
	$(RM) paper/$(PAPER_STEM).bbl
	$(RM) -r docs/_build
