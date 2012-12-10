# An example Makefile, demonstrating Latexmk
#
# Assumptions:
#   - The .tex file is report.tex
#   - It specifies report.bib as the bibliography
#   - Perl is installed
#   - latexmk.pl and uw-wkrpt.cls are in the working directory, instead of
#     being installed to the system

.PHONY: all clean clean-all

all: report.tex report.bib uw-wkrpt.cls
	latexmk -bibtex -pdf $<

clean:
	latexmk -c
	rm -f report.bcf
	rm -f report.run.xml

clean-all: clean
	rm -f report.pdf
