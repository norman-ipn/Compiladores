%{ /* definiciones de lenguaje C */
   /* lenguaje C */
  #include<stdio.h>

 /*
   Los analizadores léxico se definen con expresiones regulares.
   Las expresiones regulares son una notación simplificada
   de conjuntos regulares.
   Los conjuntos regulares: conjuntos finitos + operaciones
    operaciones: unión, concatenación, cerraduras ( +, *)
  */
%}
letras   [a-z] 
vocales  [ueioa]
digito   [0-9]
espacios [ \n\t]
%%
int                             { printf("<palabra reservada>"); }
char                            { printf("<palabra reservada>"); }
{letras}({letras}|{digito})*    { printf("<id>"); } 
";"                             { printf("<separador>"); }
[1-9]{digito}*                  { printf("<cte>"); }    
{digito}+"."{digito}+           { printf("<cte flotante>"); }
"+"|"*"|"="                     { printf("<separador>"); }
%% 


