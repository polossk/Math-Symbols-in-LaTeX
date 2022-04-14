TEX      = xelatex
MAIN     = readme
TEXARGS  = -synctex=1 -shell-escape

ifeq ($(OS), Windows_NT)
    PLATFORM = Windows
else
    ifeq ($(shell uname), Darwin)
        PLATFORM = MacOS
    else
        PLATFORM = Unix-Like
    endif
endif

ifeq ($(PLATFORM), Windows)
    RM = del /s /f
    OPEN = cmd /c start
    CLOSE = cmd /c taskkill /im Acrobat.exe /t /f
else
    RM = rm -rf
    OPEN = open
    PID = $$(ps -ef | grep AdobeAcrobat | grep -v grep | awk '{print $$2}')
    CLOSE = kill -9 $(PID)
endif

target: close wipe clean tex open

tex: $(MAIN).tex
	$(TEX) $(TEXARGS) $<
	$(TEX) $(TEXARGS) $<

open: $(MAIN).pdf
	$(OPEN) $(MAIN).pdf

close:
	@$(CLOSE) || echo not found

clean:
	$(RM) *.gls *.glo *.ind *.idx
	$(RM) *.ilg *.aux *.toc *.aux
	$(RM) *.hd *.out *.thm *.gz *.nlo *.nls
	$(RM) *.log *.lof *.lot *.bbl *.blg

wipe:
	$(RM) $(MAIN).pdf

.PHONY: open close clean wipe
