;Write an Assembly Language program that repeatedly takes a character as input until the user enters a blank space.

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    TAKE_INPUT:
     MOV AH, 01
     INT 21H
     MOV BL, AL
     
     CMP BL, ' '
     JE EXIT
     JMP TAKE_INPUT
     
    EXIT:
     MOV AH, 4CH
     INT 21H
     
MAIN ENDP
END MAIN
