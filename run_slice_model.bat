@echo off
rem 设置当前控制台为UTF-8编码
chcp 65001 >> nul

call _setup.bat

set "folder=.\.export"
if not exist "%folder%" (
    mkdir "%folder%" 2>NUL
)

rem 将模型切片, 默认输出gcode数据
rem %app% --slice ./.export/Toothy_Baby_Croc.obj --output ./.export

rem 等效 --slice
rem %app% --export-gcode ./.export/Toothy_Baby_Croc.obj --output ./.export/Toothy_Baby_Croc_2.gcode

rem 在指定的z轴位置切割模型, (未测通)
rem %app% --slice ./.export/Toothy_Baby_Croc.obj --cut 0.6 --output ./.export/Toothy_Baby_Croc_cut1.gcode

rem 使用指定配置进行切片
%app% --slice .\model\Toothy_Baby_Croc.stl --output .\.export --load .\superslicer\slice_config.ini ^
  --nozzle-diameter 0.1 --layer-height 0.1 --scale-to-fit 10,10,10 --center 90,90