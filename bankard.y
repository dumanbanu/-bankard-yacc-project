%{
void yyerror (char *s);
int yylex();
#include <stdio.h>     
#include <stdlib.h>
#include <ctype.h>


%}

%union {int num; float numfloat; char id;} 
%start program
%token print
%token scan
%token exitt
%token DO
%token WHILE
%token FOR
%token IF
%token ELSE
%token CONSTANT
%token <id> ID
%token <num> INTNUMBER
%token <numfloat> FLOATNUMBER
%type <num> program exp term 



%%
program : exp  ';'            {printf ("Result is %d\n", $1);}
        ;

exp     : term                           {$$ = $1;}
        | exp '+' term                   {$$ = $1 + $3;}
        | exp '-' term                   {$$ = $1 - $3;}
        | exp '*' term                   {$$ = $1 * $3;}        
        | exp'/' term                    {$$ = $1 / $3;}
        ;

term   	: INTNUMBER                    {$$ = $1;}
         | '('exp  ')'		       {$$ = $2;}
         
       ;

%%                    




int main (void) {
	

	return yyparse ( );
}

void yyerror (char *s) {fprintf (stderr, "%s\n", s);} 











