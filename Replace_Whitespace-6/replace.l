%{
    #include<stdio.h>
%}
%%
[\t ]+ {fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}

%%
int yywrap(void) {
    return 1;
}
int main() {
    yyin = fopen("input.txt","r");
    yyout = fopen("output.txt","w");
    yylex();
    return 0;
}