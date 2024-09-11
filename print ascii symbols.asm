;print all the ASCII symbols from 0 to 256
.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    MOV AH, 2
    MOV CX, 256
    MOV DL, 0
    
    PRINT_LOOP:
    INT 21H
    INC DL
    DEC CX
    JNZ PRINT_LOOP
    
    ;MOV AH, 2
    ;MOV DL, 30H
    ;INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN