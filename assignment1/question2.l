%{
	// Print the line numbers
	#include <stdio.h>
	int lines = 0;	
%}

%%
.*\n {
	printf("%d %s",++lines,yytext);
}
%%