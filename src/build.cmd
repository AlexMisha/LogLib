@echo off

ml /c /coff main\Log.asm
lib /subsystem:windows /export:Log Log.obj

ml /c /coff test\TestLib.asm
link /subsystem:windows TestLib.obj

move TestLib.obj ignore
move TestLib.exe ignore
move Log.obj ignore
pause