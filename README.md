# Yacc-project



Kardelen Kuşçek 20160807020
Banu Duman      20150807034

Bankard is the name of our programming language.


#BNF Form

     <program> = <statement_list>
    
     <statement_list> = <statement> | <statement_list>
     
     <statement_list> | <statement> ; <statement> | <statement>
     
     <statement> = <var> | <var> <expression> <var> 
     
     <var> = return value
     
     <expression> = +,-,*,/



Our languages syntax is variablename = variablevalue ; it must include the semicolon end of the statement.
And the variable names first letter must be lowercase character and the second letter must be uppercase.
For the booleans their first letter must be uppercase and the rest is lowercase.

=> Has while,do...


=> You can run your program by running the makefile and giving it to bankard as input:


     ./bankard < example.kb
