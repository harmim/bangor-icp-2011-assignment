# Author: Dominik Harmim <harmim6@gmail.com>

DOC = answers

INC_DIR = inc


$(DOC).pdf: $(DOC).tex
	pdflatex $<
	pdflatex $<


.PHONY: spell
spell:
	aspell -t --tex-check-comments -c $(DOC).tex


.PHONY: clean
clean:
	rm -f *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 \
		.*.lb *.dvi *.xdv *.ps $(INC_DIR)/*-converted-to.* *.fdb_latexmk \
		*.synctex* *.pdfsync
