LATEX=latex
PDFLATEX=pdflatex
FLAGS=-shell-escape
BIBTEX=bibtex
FILE=wicks_report

pdf:
	$(LATEX) $(FLAGS) $(FILE)
	$(BIBTEX) $(FILE)
	$(LATEX) $(FLAGS) $(FILE)
	$(PDFLATEX) $(FLAGS) $(FILE)

clean:
	rm -f *.blg *.bbl *.pdf *.log *.aux *.dvi
	rm -rf _minted*
