@echo off

ml /c /coff main\Log.asm
lib /subsystem:windows /export:Log Log.obj

ml /c /coff /D LOG_LEVEL=4 test\TestLib.asm
link /subsystem:windows /debug TestLib.obj

move TestLib.pdb ignore
move TestLib.ilk ignore
move TestLib.obj ignore
move TestLib.exe ignore
move Log.obj ignore
pause