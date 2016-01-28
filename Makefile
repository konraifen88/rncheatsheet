SRC=cheat_sheet.tex
TARGET=$(SRC:.tex=.pdf)
LAT=pdflatex

.PHONY: all clean

all: $(TARGET)

clean:
	rm -f *.aux *.toc *.out *.log *.lot *.lof *.pdf *.bbl *.blg *.gz *.glo *.gls *.glsdefs *.glg *.ist *.pyc *.class



$(TARGET): $(SRC)
	$(LAT) $(SRC)
	$(LAT) $(SRC)


