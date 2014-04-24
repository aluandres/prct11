all:
	latex prct11.tex
	latex prct11.tex
	bibtex prct11 
	latex prct11.tex
	latex prct11.tex
	dvips -o prct11.ps prct11.dvi
	ps2pdf -sPAPERSIZE=a4 -DMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true prct11.ps prct11.pdf

clean:
	rm -f *.toc *.ps *.log *.lof *.lot *.dvi *.aux *.blg *.bbl
