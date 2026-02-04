MOV R0, 50H      
MOV R1, 51H      
COMPARE:
        MOV A, R0
        JZ  A_ZERO       
        MOV A, R1
        JZ  B_ZERO        
        DEC R0            
        DEC R1           
        SJMP COMPARE
A_ZERO:
        MOV A, R1
        JZ  EQUAL        
        MOV 52H, #0FFH    
        SJMP DONE
B_ZERO:
        MOV 52H, #01H    
        SJMP DONE
EQUAL:
        MOV 52H, #00H     
DONE:
        SJMP DONE
END