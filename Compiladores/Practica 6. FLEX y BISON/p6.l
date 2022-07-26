%{		
	#include <math.h>
	#include <stdio.h>
	#include "p6.tab.h"

	void showError();
%}

num [0-9]+
decimal [0-9]+"."[0-9]+
signoOp "+"|"-"|"*"|"/"
modulo ["M""m"]["O""o"]["D""d"]
potencia ["P""p"]["O""o"]["W""w"]
raiz2 ["R""r"]["A""a"]["I""i"]["Z""z"]
parentesis "("|")"
coma ","
cadenaV [\"][a-zA-Z]*[\"]


%%
{num} {
	printf("Numero Entero \n");
	yylval.entero=atoi(yytext);
	return ENTERO;
}

{decimal} {
	printf("Numero Decimal\n");
	yylval.decimal=atof(yytext);
	return DECIMAL;
}

{cadenaV} { 
	printf("Cadena Valida\n");
	yylval.cadena = strdup(yytext);
	return CADENA;
}

"+" {
	printf("Suma\n");
	return yytext[0];
}


{modulo} {
	printf("Modulo\n");
	return MOD;
}
{potencia} {
	printf("Potencia\n");
	return POW;
}
{raiz2} {
	printf("Raiz Cuadrada\n");
	return RAIZ;
}

{signoOp} {
	printf("Signo de Operación\n");
	return yytext[0];
}

{coma} {
	printf("Coma\n");
	return yytext[0];
}



{parentesis} {
	printf("Parentesis\n");
	return yytext[0];
}


\n {
	printf("\nSalto de Línea\n");
	return EOL;
	}

%% 
int yywrap(){
	return 1;
}

void showError(){
	printf("_");
}