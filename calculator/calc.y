%{
	#include <stdio.h>
	#ifndef YYSTYPE
	#define YYSTYPE double
	#endif
	extern int yyerror(char *s);
	extern int yylineno;
	extern int yyparse();
%}

%token INTEGER
%%

program:
	program expr '\n'	{ printf("%lf\n", $2); }
	|
	;

expr:
	INTEGER				{ $$ = $1; }
	| expr '+' expr		{ $$ = $1 + $3; }
	| expr '-' expr 	{ $$ = $1 - $3; }
	| expr '*' expr		{ $$ = $1 * $3; }
	| expr '/' expr		{ $$ = $1 / $3; }
	;
%%

int main()
{
	yyparse();
	return 0;
}
int yyerror( char *s ) { fprintf( stderr, "%s\n", s); }