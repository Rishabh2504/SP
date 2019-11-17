%{
    #include <stdio.h> 
    #include "y.tab.h"
%}

%%

[\n]    return NEWLINE;
.       return yytext[0];

%%

int yywrap()
{
	return 1;
}