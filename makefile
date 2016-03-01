.PHONY: tikz_cheatsheet.pdf all clean

all: tikz_cheatsheet.pdf

tikz_cheatsheet.pdf: tikz_cheatsheet.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode -shell-escape" -use-make tikz_cheatsheet.tex

clean:
	latexmk -CA
