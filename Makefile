SRC=cheat_sheet.tex
TARGET=$(SRC:.tex=.pdf)
LAT=pdflatex
OP=xdg-open

.PHONY: all open clean

all: $(TARGET)

clean:
	rm -f *.aux *.toc *.out *.log *.lot *.lof *.pdf *.bbl *.blg *.gz *.glo *.gls *.glsdefs *.glg *.ist *.pyc *.class

open:
	$(OP) $(TARGET)



$(TARGET): $(SRC)
	$(LAT) $(SRC)
	$(LAT) $(SRC)


