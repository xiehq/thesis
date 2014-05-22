@echo off

cd /d %~dp0

@rem set the thesis name
set target=shuji

xelatex %target%.tex
