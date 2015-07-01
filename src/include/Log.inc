.code
LOG_DEBUG macro FmtString, args:vararg
invoke Log, FmtString, args
EXITM <eax>
ENDM

LOG_INFO macro vararg

ENDM

LOG_WARN macro vararg

ENDM

LOG_ERROR macro vararg

ENDM