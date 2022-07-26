%{
	#include <stdio.h>
	#include <math.h>
	#include <stdlib.h>

	char* concat();	
	int longCad(char* cadena);
	char* concat(char *cadena1, char *cadena2);
%}

/*Declaraciones de BISON*/
/*Directiva %union*/
%union{
	int entero;
	char *cadena;
	double decimal;	
	
}	

/* Declaración de Tokens (Terminales)*/
%token <entero> ENTERO
%token <decimal> DECIMAL
%token <cadena> CADENA
%token MOD
%token EOL
%token COMA
%token POW
%token RAIZ

/* Declaración de Tipos (No Terminales)*/
%type <entero> expI
%type <decimal> expD
%type <cadena> expC


/* Jerarquía de Operaciones*/
%left '+' '-'
%left '*' '/' MOD POW RAIZ

/*GRAMÁTICA*/
%%
input:		/*Cadena Vacía*/
	| input line
;

line:	EOL
	| expI EOL { printf ("-----------> Resultado Entero de la OP: %d\n\n",$1);}
	| expD EOL { printf ("-----------> Resultado Decimal de la OP: %.2f\n\n",$1);}
	| expC EOL{printf("-----------> Cadena Generada: %s\n", $1);}
;

expI:		ENTERO	{$$ = $1;}
	| expI '+' expI	{$$ = $1 + $3;}	
	| '+'  expI	{$$ = +$2;}
	| expI '*' expI	{$$ = $1 * $3;}	
	| expI '-' expI	{$$ = $1 - $3;}
	| '-'  expI	{$$ = -$2;}
	| expI '/' expI {
		if($3 == 0){
			yyerror("Error, no se puede dividir entre 0");
		}else{
			$$ = $1 / $3;
		}
	}
	| MOD  '('expI','expI')' {$$ = $3 % $5;}
	| POW  '('expI','expI')' {$$ = pow($3,$5);}
	| RAIZ '('expI')' {$$ = sqrt($3);}               
;         

expD:		DECIMAL	{$$ = $1;}
	| expD '+' expI	{$$ = $1 + $3;}
	| expD '+' expD {$$ = $1 + $3;}
	| expI '+' expD {$$ = $1 + $3;}

	| expD '*' expI	{$$ = $1 * $3;}
	| expD '*' expD	{$$ = $1 * $3;}
	| expI '*' expD	{$$ = $1 * $3;}

	| expD '-' expI	{$$ = $1 - $3;}
	| expD '-' expD	{$$ = $1 - $3;}
	| expI '-' expD	{$$ = $1 - $3;}

	| expD '/' expI   {$$ = $1 / $3;}
	| expD '/' expD	{$$ = $1 / $3;}	
	| expI '/' expD	{$$ = $1 / $3;}

	| MOD  '('expD','expD')' {$$ = fmod($3,$5);}
	| MOD  '('expD','expI')' {$$ = fmod($3,$5);}
	| MOD  '('expI','expD')' {$$ = fmod($3,$5);}

	| POW  '('expD','expD')' {$$ = pow($3,$5);}
	| POW  '('expD','expI')' {$$ = pow($3,$5);}
	| POW  '('expI','expD')' {$$ = pow($3,$5);}

	| RAIZ '('expD')' {$$ = sqrt($3);}	
;

expC: CADENA { $$ = (char*)$1; }
	| expC'+' expC {$$ = concat($1,$3);}
%%
void yyerror(char *s){
 printf("D: %s\n",s);
}

main(){
	yyparse();
}

int longCad(char* cadena){
	int i = 0; 
	while(*cadena != '\0'){
		i++;
		cadena++;
	}
	return i;
}

char* concat(char *cad1, char *cad2){
	int i;	
	int j;
	char *newCad;
	i = 0, j = 0;
	size_t lCad1 = longCad(cad1);
	size_t lCad2 = longCad(cad2);
	size_t sumLong = lCad1 + lCad2;
	newCad = (char*)malloc(sumLong + 1);
		for(i=0; i < lCad1; i++){
			if(cad1[i]!='"')
				newCad[j++] = cad1[i];
		}
		for(i = 0; i < sumLong; i++)
			if(cad2[i]!='"')
				newCad[j++] = cad2[i];

	newCad[j] = '\0';
	return newCad;
}