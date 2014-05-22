@echo off

cd /d %~dp0

@rem set the thesis name
set target=main

xelatex %target%.tex
bibtex %target%
@rem del /f %target%.pdf

xelatex %target%.tex
xelatex -synctex=1 %target%.tex

set status=1
(tasklist|find "SumatraPDF"||set status=0) 2>nul 1>nul
if %status%==0 (start "SumatraPDF" SumatraPDF.exe %target%.pdf)