LATEX=latex
PDFLATEX=pdflatex
BIBTEX=bibtex
FILE=wicks_report

pdf:
	$(PDFLATEX) $(FILE)
	$(BIBTEX) $(FILE)
	$(PDFLATEX) $(FILE)

clean:
	rm -f *.blg *.bbl *.pdf *.log *.aux 
