%{
    #include<stdio.h>
    int vw = 0;
    int c = 0;
%}
%%
[aeiouAEIOU] {vw++;}
[a-zA-z] {c++;}
%%
int yywrap(void) {
    return 1;
}
int main() {
    yylex();
    printf("\nThe no. of vowels are : %d", vw);
    printf("\nThe no. of consonants are : %d", c);
    return 0;
}