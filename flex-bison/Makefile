a.out: lex.yy.o calc.tab.o
	gcc lex.yy.o calc.tab.o -ll

lex.yy.c: calc.l calc.tab.h
	flex calc.l

calc.tab.h: calc.y
	bison calc.y -d
calc.tab.c: calc.y
	bison $<
	

lex.yy.o: lex.yy.c
	gcc -c $<

calc.tab.o: calc.tab.c
	gcc -c $<

clean: 
	rm calc.tab.* lex.yy.* a.out

