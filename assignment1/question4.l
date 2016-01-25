%{
	#include <stdio.h>
	#include <string.h>
	int lines = 0;	
	int words = 0;
	int characters = 0;
%}
%%
[a-zA-Z0-9]+ {
	words++;
	characters += strlen(yytext);
}
[\n] {
	lines++;
}
. ;
%%
void main(){
	yylex();
	printf("Words :%d,\nChars %d,\nLines %d",words,characters,lines);
}