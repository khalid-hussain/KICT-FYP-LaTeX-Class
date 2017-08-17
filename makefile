FYP=fyp_report.tex
FYPW=fyp_report
FYP-CLS=kict-fyp.cls.tex
FYP-PDF=fyp_report.pdf
FRONTMATTER=abstractPage.tex acknowledgmentPage.tex coverPage.tex declarationPage.tex titlePage.tex
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md
TO-CLEAN=*.aux *.lof *.lot *.toc *.log *.out *.synctex.gz *.blg *.run.xml *.bcf *.bbl \
frontmatter/*.aux frontmatter/*.lof frontmatter/*.lot frontmatter/*.toc frontmatter/*.log frontmatter/*.out frontmatter/*.synctex.gz frontmatter/*.bbl frontmatter/*.blg \
workspace/*.log workspace/*.aux workspace/*.synctex.gz workspace/*.toc

default: pdf

# Frontmatter is also the name of a folder in this directory
# See: https://stackoverflow.com/questions/3931741/why-does-make-think-the-target-is-up-to-date#3931814
.PHONY: clean frontmatter

frontmatter:
	+$(MAKE) -C frontmatter

content-from-pandoc:
	pandoc -t latex -o $(PANDOC-CONTENT) --smart $(PANDOC-SOURCE) --top-level-division=chapter --biblatex --listings

pdf: $(FYP) content-from-pandoc
	lualatex $(FYP)
	biber $(FYPW)
	lualatex $(FYP)
	lualatex $(FYP)

clean:
	rm -f $(TO-CLEAN)