%{
	//Replace multiple spaces by a single space
%}
%%
[ \t]+ {
	printf(" ");
}
. {
	printf("%s",yytext);
}
%%
