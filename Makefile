TARGET=main

# when these files change make rebuilds the document
TEXDEPENDS=Makefile \
 main.tex intro.tex integrate.tex informal.tex semiformal.tex\
 preface.tex figures.tex popl-formal1.tex popl-formal2.tex\
 Styles/dissertationfmt.sty \

BIBTEX=bibtex
RM=rm


# TEXINPUTS=.:./Styles//:$(TEXINPUTS)

# this seems to work. --mw Thu Apr  7 15:24:02 2005
export TEXINPUTS=.:./Styles//:./esop09//:

# this is needed for Miktex (maybe not)
LATEX=pdflatex -interaction=errorstopmode

pdf:
	rubber -d $(TARGET)

$(TARGET).pdf: $(TARGET).tex $(TEXDEPENDS)
	rubber -d $(TARGET)

norubber:
	pdf-slatex $(TARGET)
	bibtex $(TARGET)
	pdf-slatex $(TARGET)
	pdf-slatex $(TARGET)
	pdf-slatex $(TARGET)

once:
	pdf-slatex $(TARGET)

clean:
	$(RM) -f $(TARGET).dvi $(TARGET).ps $(TARGET).log $(TARGET).aux $(TARGET).thm $(TARGET).bbl $(TARGET).blg $(TARGET).lof $(TARGET).lot $(TARGET).toc $(TARGET).idx $(TARGET).pdf .Z*.tex
