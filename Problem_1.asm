; Write an Assembly Language program to take two single-digit numbers as input and display the greater number. 
; If both numbers are equal, display `E`.


.model small
.stack 100h
.data

MSG1 DB "Input: $"
MSG2 DB 0DH, 0AH, "Output: $"

.code

MAIN PROC
    
    MOV AX,@DATA
    MOV DS, AX
    
    LEA DX, MSG1
    MOV AH, 09
    INT 21H
    
    MOV AH, 01
    INT 21H
    MOV BL, AL
    
    MOV AH, 01
    INT 21H
    MOV BH,AL
    
    LEA DX,MSG2
    MOV AH, 09
    INT 21H
    
    CMP BL, BH
    JE EQUAL
    JG FIRST_GREATER
    
    SECOND_GREATER:
       MOV DL, BH
       MOV AH, 02
       INT 21H
       JMP EXIT
       
    FIRST_GREATER:
       MOV DL, BL
       MOV AH, 02
       INT 21H
       JMP EXIT
      
    EQUAL:
       MOV DL, 'E'
       MOV AH, 02
       INT 21H
       
    EXIT:
       MOV AH, 4CH
       INT 21H
       
MAIN ENDP
END MAIN
    
    