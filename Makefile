all: card.pdf

card.pdf: card.tex
	latex card.tex
	dvips -t letter -j0 -Ppdf -Pdownload35 -G0 -D 1200 -Z -mode ljfzzz -o card.ps card.dvi
	ps2pdf -dCompatibilityLevel=1.4 -dSubsetFonts=false -dEmbedAllFonts=true card.ps card.pdf

clean:
	rm -f *.dvi
	rm -f *.pdf
	rm -f *.ps
