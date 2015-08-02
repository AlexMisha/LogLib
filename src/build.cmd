@echo off

ml /c /coff /D LOG_LEVEL=4 test\TestLib.asm
link /subsystem:windows /debug TestLib.obj

move TestLib.pdb ignore
move TestLib.ilk ignore
move TestLib.obj ignore
move TestLib.exe ignore
pause