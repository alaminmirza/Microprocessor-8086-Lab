INCLUDE 'EMU8086.INC'
ORG 100H

LEA SI, MSG1 ;ASK FOR THE NUMBER
CALL PRINT_STRING
CALL SCAN_NUM  ;GET NUMBER IN CX

MOV AX, CX

;PRINT THE FOLLOWING STRING

CALL PTHIS
DB 13, 10, 'YOU HAVE ENTERED: ', 0
;DB 'YOU HAVE ENTERED: ', 0
CALL PRINT_NUM

RET

MSG1 DB 'ENTER THE NUMBER: ', 0

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS ;REQUIRED FOR PRINT_NUM
DEFINE_PTHIS

END ;DIRECTIVE TO STOP THE COMPILER

