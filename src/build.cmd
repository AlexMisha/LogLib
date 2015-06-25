@echo off

ml /c /coff main\LogLib.asm
lib /subsystem:windows /export:LogLib LogLib.obj

ml /c /coff test\TestLib.asm
link /subsystem:windows TestLib.obj

move TestLib.obj ignore
move TestLib.exe ignore
move LogLib.obj ignore
pause