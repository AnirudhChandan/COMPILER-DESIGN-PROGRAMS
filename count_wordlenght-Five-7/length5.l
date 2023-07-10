%{
    #include<stdio.h>
    #include<string.h>
    int count=0;
%}
%%
[a-zA-z]+ {if(yyleng == 5)count++;}
. ;
%%
int yywrap() {
    return 1;
}
int main() {
    yylex();
    printf("%d",count);
    return 0;
}