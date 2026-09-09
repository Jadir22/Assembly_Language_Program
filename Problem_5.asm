;Write an Assembly Language program to check whether a number is even or odd using TEST.

.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 0DH, 0AH, "EVEN$"
MSG2 DB 0DH, 0AH, "ODD$"

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,01
    INT 21H
    MOV BL, AL
    
    TEST BL, 01
    JZ EVEN
    
    ODD:
     LEA DX, MSG2
     MOV AH, 09
     INT 21H
     JMP EXIT
    
    EVEN:
     LEA DX, MSG1
     MOV AH, 09
     INT 21H
     
    EXIT:
     MOV AH, 4CH
     INT 21H
    
MAIN ENDP
END MAIN