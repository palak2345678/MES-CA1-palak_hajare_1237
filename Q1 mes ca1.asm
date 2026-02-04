ORG 0000H

MOV A,#03H
MOV B,#10H
MUL AB          
ADD A,#07H      

MOV R0,A       

MOV A,#01H
MOV B,#10H
MUL AB          
ADD A,#02H      

MOV B,A         
MOV A,R0        

HERE: SJMP HERE
END
