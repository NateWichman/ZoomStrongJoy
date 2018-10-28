%{
  #include <stdio.h>
%}

%%

END {printf("return: END\n");}
\; {printf("return: END_STATEMENT\n");}
POINT {printf("return: POINT\n");}
LINE {printf("return: LINE\n");}
CIRCLE {printf("return: CIRCLE\n");}
RECTANGLE {printf("return: RECTANGLE\n");}
SET_COLOR {printf("return: SET_COLOR\n");}
[0-9]+\.+[0-9]+ {printf("return: FLOAT %s", yytext);}
[0-9]+ {printf("return: INT %s\n", yytext);}
[\n\t\r] ; 
. {printf("ERROR, invalid lexeme '%s'\n", yytext);}

%%

int main(int *argc, char **argv){
	yylex();
	return 0;
}
