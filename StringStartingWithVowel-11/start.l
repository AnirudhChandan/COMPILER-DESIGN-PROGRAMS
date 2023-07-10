%{
    #include<stdio.h>
    int flag=0;
%}
%%
[aeiouAEIOU]+[a-zA-Z0-9]* {flag=1;}
.|\n ;
%%
int yywrap(void) {
    return 1;
}
int main() {
    yylex();
    if(flag) {
        printf("\nACCEPTED!!!");
    }
    else {
        printf("\nNOT ACCEPTED");
    }
    return 0;
}