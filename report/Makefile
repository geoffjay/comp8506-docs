NULL =

TEX = /usr/bin/pdflatex

report_TEX = \
	report.tex \
	$(NULL)

report_PDF = \
	$(report_TEX:%.tex=%.pdf) \
	$(NULL)

CLEAN_FILES = \
	$(report_PDF) \
	$(NULL)

#report: report/report.tex report/report.pdf
	#$(TEX) -shell-escape -synctex=1 \
		#-interaction=nonstopmode -file-line-error \
		#-output-directory=report/ $<

report: $(report_TEX) $(report_PDF)

%.pdf: %.tex
	$(TEX) -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error $<

clean:
	-test -z "$(CLEAN_FILES)" || rm -f %(CLEAN_FILES)
