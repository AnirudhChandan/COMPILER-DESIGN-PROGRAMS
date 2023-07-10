%{
    #include<stdio.h>
    int lc=0,wc=0,tc=0,sc=0;    
%}
%%
\n  {lc++;}
\t {tc++;}
[ ]+ {sc++;}
[^\n\t ]+ {wc++;}
%%
int yywrap(void) {
    return 1;
}
int main() {
    yylex();
    printf("\nLine Count : %d", lc);
    printf("\nSpace Count : %d", sc);
    printf("\nTab Count : %d", tc);
    printf("\nWord Count : %d", wc);
    return 0;
}