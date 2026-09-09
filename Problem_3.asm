;Write an Assembly Language program to display `*` five times using a FOR loop.
;Output: *****

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BL, '*'
    MOV CX, 5
    
    PRINT_LOOP:
     MOV DL, BL
     MOV AH, 02
     INT 21H
     LOOP PRINT_LOOP
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
