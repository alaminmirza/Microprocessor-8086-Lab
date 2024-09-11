data segment
    A DW 9384H
    B DW 1845H
    SUM DW ?
    CARRY DB 00H
data ends

code segment
    ASSUME CS:CODE, DS:DATA
start:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, A
    ADD AX, B
    JNC SKIP
    INC CARRY
skip:
    MOV SUM, AX
code ends
    end start