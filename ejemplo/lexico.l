%{
  /* 
 lenguaje LEX,  se usaba para lex
 lex es un programa de UNIX AT&T (70's)
 flex es la versión libre de lex.
  
Un analizador léxico se define o se espefica 
     usando expresiones regulares. 
     expresión regular es una notación simplificada
     para lenguajes reguales. 
    lenguajes regulares: conjunto finitos + operaciones
      operaciones: unión, concatención y la cerraduda.
 */
  /*código de C */
  #include<stdio.h>

%}
digito   [0-9]
letra    [a-zA-Z]
palabras "int"|"char"|"float"
%%
{palabras}	 		   { printf("-PR-\n"); }
({letra}|_)({letra}|{digito}|_)*   { printf("-ID-\n"); }
"{"|"}"|"("|")"|";"		   { printf("-SEP-\n"); }
[1-9]{digito}*|"0"		   { printf("-CTE-\n"); }
"="|"+"|"-"                        { printf("-OP-\n"); }
%%




