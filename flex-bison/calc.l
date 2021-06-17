%{
 #include "calc.tab.h"
 extern int yylex();
%}

%%
[0-9]+  {  yylval.t_entero = atoi(yytext); return ENTERO; }
[a-z]+  {  yylval.t_cadena = yytext; return CADENA; }
[0-9]+"."[0-9]+  { yylval.t_flotante = atof(yytext); return FLOTANTE; }
\n return *yytext;
.
%%
