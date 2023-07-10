%{
    #include<stdio.h>
    #include<string.h>
%}
%%
[a-zA-Z0-9]+ {int j = strlen(yytext)-1;
             int i = 0;
             int flag = 1;
             while(i<=j) {
                if(yytext[i] != yytext[j]) {
                    flag = 0;
                    printf("%s is not a Palindrome", yytext);
                    break;
                }
                i++;
                j--;
             }
             if(flag==1) {
                printf("%s is a Palindrome", yytext);
             }
            }
%%
int yywrap(void) {
    return 1;
}
int main() {
    yylex();
    return 0;
}