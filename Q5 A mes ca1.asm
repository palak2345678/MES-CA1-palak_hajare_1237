ORG 0000H

MOV R0, #40H       
MOV R1, #40H        

SCAN:
MOV A, @R0         
CJNE A, #0FFH, COPY 
SJMP NEXT           

COPY:
MOV @R1, A         
INC R1             

NEXT:
INC R0             
CJNE R0, #60H, SCAN 

FILL:
MOV A, R1
CJNE A, #60H, ZERO
SJMP DONE

ZERO:
MOV @R1, #00H
INC R1
SJMP FILL

DONE:
HERE: SJMP HERE
END