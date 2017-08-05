FYP=fyp_report.tex
FYPW=fyp_report
FYP-CLS=kict-fyp.cls.tex
FYP-PDF=fyp_report.pdf
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md

default: pdf

content-from-pandoc:
	pandoc -t latex -o $(PANDOC-CONTENT) --smart $(PANDOC-SOURCE) --top-level-division=chapter --biblatex

pdf: $(FYP) content-from-pandoc
	lualatex $(FYP)
	biber $(FYPW)
	lualatex $(FYP)
	lualatex $(FYP)

.PHONY: clean

clean:
	rm -f $(TO-CLEAN)