%{
#include "y.tab.h"
#include <stdio.h>
#include <stdlib.h>

void yyerror (char *s);
int yylex();
%}

%%

[a-zA-Z]                        {yylval.id = yytext[0]; return ID;}
[0-9]+                          {yylval.num = atoi(yytext); return INTNUMBER; }
[0-9]*(\.)?[0-9]*               {yylval.numfloat = atoi(yytext); return FLOATNUMBER; }
[\t]                             ;
[\n]                             return 0;
_		                {ECHO; yyerror ("unexpected character\n");}
"Print"                          {return print;}
"Scan"                           {return scan;}
"exit"                           {return exitt;}
"do"	                         {return DO;}
"while"	                         {return WHILE;}
"for"	                         {return FOR;}
"if"	                         {return IF;}
"else"	                         {return ELSE;}
"const"                          {return CONSTANT;}
[-+*/()=;]		         {return yytext[0];}




%%
int yywrap(void){
  return 1;
}


