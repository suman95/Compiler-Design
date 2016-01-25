%{
	#include "y.tab.h"
	extern int yywrap();
	extern int yyerror(char *s);
	extern double yylval;
%}

%%
quit {
	exit(0);
}


([0-9]+|[0-9]*"."[0-9]+)	{
	yylval = atof(yytext);
	return INTEGER;
}


[\+\-\*\/\n] {
	return *yytext;
}
[ \t]   ;
. 	yyerror("invalid statement");
	
%%

int yywrap(void) {
	return 1;
}