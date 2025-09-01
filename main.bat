@echo off
rem 设置当前控制台为UTF-8编码
chcp 65001 >> nul

call _setup.bat

rem %app% --help > superslicer/SuperSlicer_2.7.61.8_win.txt
%app% --help-fff > superslicer/SuperSlicer_2.7.61.8_win_fff.txt
