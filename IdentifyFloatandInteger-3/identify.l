%{
    #include<stdio.h>    
%}
%%
[0-9]+ {printf("\nInteger Value!!!");}
[0-9]+[.][0-9]+ {printf("\nFloat Value!!!");}
%%
int yywrap(void) {
    return 1;
}
int main() {
    yylex();
    return 0;
}