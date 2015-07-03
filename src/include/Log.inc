DEBUG_LEVEL equ 4
INFO_LEVEL equ 3
WARN_LEVEL equ 2
ERROR_LEVEL equ 1

Log PROTO near C :dword, :vararg

.code
LOG_DEBUG macro lpResultBuf, FmtString, args:vararg
if LOG_LEVEL ge DEBUG_LEVEL
.data
 SymbString db "DEBUG: "
 db FmtString, 0
.code
invoke Log, lpResultBuf, offset SymbString, args
endif
ENDM

LOG_INFO macro lpResultBuf, FmtString, args:vararg
if LOG_LEVEL ge INFO_LEVEL
.data
 SymbString db "INFO: "
 db FmtString, 0
.code
invoke Log, lpResultBuf, offset SymbString, args
endif
ENDM

LOG_WARN macro lpResultBuf, FmtString, args:vararg
if LOG_LEVEL ge WARN_LEVEL
.data
 SymbString db "WARN: " FmtString, 0
.code
invoke Log, lpResultBuf, offset SymbString, args
endif
ENDM

LOG_ERROR macro lpResultBuf, FmtString, args:vararg
if LOG_LEVEL ge ERROR_LEVEL
.data
 SymbString db "ERROR: "
 db FmtString, 0
.code
invoke Log, lpResultBuf, offset SymbString, args
endif
ENDM