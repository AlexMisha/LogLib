.686P
.model flat, stdcall
option casemap:none

PUBLIC Log
;------------------------------------------------
include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\macros\macros.asm
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.data

.code

Log proc near C FmtString:dword, args:vararg
local buffer[256]:byte

invoke wsprintfA, addr buffer, FmtString, args
invoke OutputDebugString, addr buffer

ret
Log endp
end 