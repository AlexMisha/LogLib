@echo off

ml /c /coff main\Log.asm || goto ErrLable

goto End
:ErrLable
echo Error
:End
pause