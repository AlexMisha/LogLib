.686P
.model flat, stdcall
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
Log proc FmtString:dword
local Buffer[256]:byte

invoke wsprintfA, addr Buffer, FmtString
invoke OutputDebugString, addr Buffer

ret
Log endp
end 