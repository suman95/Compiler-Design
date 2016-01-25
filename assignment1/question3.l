%{
	//Replace capital letters with small except those in C-style comments
	#include <stdio.h>
	#include <ctype.h>
	#include <string.h>
	int i;
%}

%%
[//][a-zA-Z ]+ {
	char *s = yytext;
	for(i = 0; i < strlen(s); i++)
	{
		printf("%c",s[i]);
	}
}
[\/][\*][a-zA-Z ]+[\*][\/] {
	char *s = yytext;
	for(i = 0; i < strlen(s); i++)
	{
		printf("%c",s[i]);
	}	
}
[A-Z] {
	printf("%c",tolower(yytext[0]));
}
. { printf("%s",yytext);}
%%
