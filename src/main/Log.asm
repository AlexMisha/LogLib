.686P
.model flat, C
option casemap:none
;------------------------------------------------

include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\macros\macros.asm
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.data

.code
Log proc near C parmcount:dword, FmtString:dword, args:vararg
local Buffer[256]:byte

invoke wsprintfA, addr Buffer, FmtString, args
invoke OutputDebugString, addr Buffer

ret
Log endp
end 