%{
    #include <stdio.h>    
%}

%%
[a-zA-Z_][a-zA-Z_0-9]* { printf("Valid Identifier\n"); }
.[^a-zA-Z_0-9\n]+ {printf("\nInvalid Identifier");}
.[^\n]+ {printf("\nInvalid Identifier");}
%%
int yywrap(void) {
    return 1;
}

int main() {
    yylex();
    return 0;
}