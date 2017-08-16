FYP=fyp_report.tex
FYPW=fyp_report
FYP-CLS=kict-fyp.cls.tex
FYP-PDF=fyp_report.pdf
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md
TO-CLEAN=*.aux *.lof *.lot *.toc *.log *.out *.synctex.gz *.blg *.run.xml *.bcf *.bbl \
frontmatter/*.aux frontmatter/*.lof frontmatter/*.lot frontmatter/*.toc frontmatter/*.log frontmatter/*.out frontmatter/*.synctex.gz frontmatter/*.bbl frontmatter/*.blg \
workspace/*.log workspace/*.aux workspace/*.synctex.gz workspace/*.toc

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