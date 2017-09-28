LATEX=latex
PDFLATEX=pdflatex
BIBTEX=bibtex
FILE=wicks_report

pdf:
	$(LATEX) $(FILE)
	$(BIBTEX) $(FILE)
	$(LATEX) $(FILE)
	$(PDFLATEX) $(FILE)

clean:
	rm -f *.blg *.bbl *.pdf *.log *.aux 
