;Write an Assembly Language program to convert a lowercase letter into uppercase using AND.

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 01
    INT 21H
    MOV BL, AL
    
    AND BL, 0DFH
    
    MOV DL, BL
    MOV AH, 02
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
END MAIN