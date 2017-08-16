TO-CLEAN=*.aux *.lof *.lot *.toc *.log *.out *.synctex.gz *.blg *.run.xml *.bcf *.bbl

.PHONY: clean

default:
	lualatex coverPage.tex
	lualatex titlePage.tex
	lualatex declarationPage.tex
	lualatex acknowledgmentPage.tex
	lualatex abstractPage.tex
	make clean

clean:
	rm -f $(TO-CLEAN)