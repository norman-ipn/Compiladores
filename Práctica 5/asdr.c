/*
 archivo: asdr.c
 fecha:   13 mayo 2021
 autor:   Rafael Norman Saucedo Delgado

 Este programa es un ejemplo de construcción de un 
 analizador sintáctico por descenso recursivo (A.S.D.R.).

 Se usó la siguiente gramática libre de contexto:

	A-> aBa		(1)		
	B-> bAb		(2)			
	B-> a		(3)

*/
#include<stdio.h>
#include<stdlib.h>

char entrada[8]="aaa";
int i = 0;

void A(void);
void B(void);

void consumir(char x) {

	if( entrada[i] == x ) {
            i++;
        } else {
            exit(1);
 	}

}

void A(void) {
	consumir('a');
	B();
	consumir('a');
}


void B(void) {

   switch( entrada[i] ) {

	case 'b':	consumir('b');
			A();
			consumir('b');
		 
			break;
	case 'a':	
			consumir('a');

			break;
	default:
			exit(1);

   }

}

int
main(void) {
 
  A();

  if(entrada[i]=='\0') {
      printf("\n%s: si pertenece a L(G)\n", entrada);
  }

  return 0;
}
