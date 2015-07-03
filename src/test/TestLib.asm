.686P
.model flat, stdcall
option casemap:none
;------------------------------------------------

include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\macros\macros.asm
include c:\masm32\projects\LogLib\src\include\Log.inc
includelib Log.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.data
	Message db 'Hello', 0
	Num db '442', 0
	
.code
start:
mov eax, 100h
LOG_DEBUG "%s[%s]", offset Message, offset Num
invoke ExitProcess, 0

end start