%{
#include <stdio.h>
%}
%%
[\n] {
printf("line-end\n");
exit(0);
}
(END|FOR|GOSUB|GOTO|RETURN|STEP|LET|TO|REM|IF) {
	printf("Keyword : %s\n",yytext);
}
[A-Z][0-9]? {
	printf("Variable : %s\n",yytext);
}
[\+\-]?[0-9]+ {
	printf("Digit : %s\n",yytext);
}
[\+\-\*\/\^] {
	printf("Arithmetic Operator : %s\n",yytext);
}
([\<\>]|\<\=|\>\=|\<\>) {
	printf("Relational operator : %s\n",yytext);
}
[ \t\n]+ ;
. {
	printf("Invalid token");
}
%%

