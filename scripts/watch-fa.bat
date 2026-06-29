@echo off

set ROOT=%~dp0..
set FONTS=%ROOT%\assets\fonts
set OUTPUT=%ROOT%\output

if not exist "%OUTPUT%" mkdir "%OUTPUT%"

typst watch ^
    "%ROOT%\main-fa.typ" ^
    "%OUTPUT%\resume-fa.pdf" ^
    --font-path "%FONTS%"