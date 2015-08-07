.686P
.model flat, stdcall
option casemap:none
;------------------------------------------------
include \masm32\include\kernel32.inc
include \masm32\macros\macros.asm
include c:\masm32\projects\LogLib\src\include\Log.inc
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
.data
	Message db 'Hello', 0
	
.code
start:
LOG_DEBUG "%s[%08X]", addr Message, 1008h
LOG_INFO "%s[%08X]", addr Message, 1008h
LOG_WARN "%s[%08X]", addr Message, 1008h
LOG_ERROR "%s[%08X]", addr Message, 1008h

invoke ExitProcess, 0

end start