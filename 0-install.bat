@echo off

cd /d %~dp0

@rem set the thesis name
set thupkg=thuthesis

@rem gen cls,cfg... files
latex %thupkg%.ins

@rem gen the package document
xelatex %thupkg%.dtx
xelatex %thupkg%.dtx
makeindex -s gind.ist -o %thupkg%.ind %thupkg%.idx
makeindex -s gglo.ist -o %thupkg%.gls %thupkg%.glo
xelatex %thupkg%.dtx
xelatex %thupkg%.dtx
