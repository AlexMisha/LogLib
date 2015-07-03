.686P
.model flat, stdcall
option casemap:none

PUBLIC Log
;------------------------------------------------

include \masm32\include\kernel32.inc
include \masm32\macros\macros.asm
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

EXTERN wsprintfA:NEAR

.data

.code

Log proc near C lpResultBuf:dword, FmtString:dword, args:vararg

push dword ptr [ebp+20]
push dword ptr [ebp+16]
push FmtString
push lpResultBuf
call wsprintfA
add esp, 16

invoke OutputDebugString, [lpResultBuf]

ret
Log endp
end 