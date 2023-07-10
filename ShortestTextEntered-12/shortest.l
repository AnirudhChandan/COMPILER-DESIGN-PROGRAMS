%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>
    int shorter = 10000;
    char shortestText[100];
%}
%%
[a-zA-Z0-9]+ {if(yyleng < shorter) {
                shorter = yyleng;
                strcpy(shortestText,yytext);    
                }
            }
%%
int yywrap(void) {
    return 1;
}
int main() {
    yylex();
    printf("\nThe Shortest word is : %s", shortestText);
    printf("\nIts length is : %d",shorter);
    return 0;
}