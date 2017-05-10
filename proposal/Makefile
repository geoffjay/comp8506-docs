NULL =

TEX = /usr/bin/pdflatex

proposal_TEX = \
	proposal.tex \
	$(NULL)

proposal_PDF = \
	$(proposal_TEX:%.tex=%.pdf) \
	$(NULL)

CLEAN_FILES = \
	$(proposal_PDF) \
	$(NULL)

proposal: $(proposal_TEX) $(proposal_PDF)

%.pdf: %.tex
	$(TEX) -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error $<

clean:
	-test -z "$(CLEAN_FILES)" || rm -f %(CLEAN_FILES)
