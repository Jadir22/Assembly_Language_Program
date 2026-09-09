 ;Write an Assembly Language program to check the value stored in AX.

 ;If `AX > 0`, display Positive.
 ;If `AX < 0`, display Negative.
 ;If `AX = 0`, display Zero.

.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Positive$"
MSG2 DB "Negative$"
MSG3 DB "Zero$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS, AX
    
    MOV AX, -5
    
    CMP AX, 0
    JE ZERO
    JG POSITIVE
    JL NEGATIVE
    
    ZERO:
     LEA DX, MSG3
     MOV AH, 09
     INT 21H
     JMP EXIT
     
    POSITIVE:
     LEA DX, MSG1
     MOV AH, 09
     INT 21H
     JMP EXIT
     
    NEGATIVE:
     LEA DX, MSG2
     MOV AH, 09
     INT 21H
     
    EXIT:
     MOV AH, 4CH
     INT 21H

MAIN ENDP
END MAIN