%{
 #include<stdio.h>

 extern int yylex();

 int yyerror(char *m) {
    printf("error: %s", m);
    return 0;
  }
%}
%union{
 int t_entero;
 char * t_cadena;
 float t_flotante; 
}


%token<t_entero> ENTERO
%token<t_cadena> CADENA
%token<t_flotante> FLOTANTE
%%
inicio: lineas
;

lineas: 
 linea lineas
;
lineas:
;
linea: 
  expresion '\n' { printf("\n");}
;

expresion:
 ENTERO  {printf("Entero: %d\n", $1);}
;

expresion: 
 CADENA {printf("cadena: %s\n", $1);}
;

expresion:
 FLOTANTE {printf("flotante: %f\n", $1);}
;





%%

int main() {
 yyparse();
 return 0;
}
