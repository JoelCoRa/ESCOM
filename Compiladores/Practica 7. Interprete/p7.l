%{
		//Estructura
	typedef struct datos {
        int tipo;
        int entero;
        double doble;
        char* string;
    }Dato;
	
	//Bibliotecas
    #include <stdio.h>
    #include <stdlib.h> 
    #include <stdbool.h>
	#include "p7.tab.h"
	
	//Prototipos
	int tam(char* cadena);
	char *quitarComilla(char* yytext,int largo);
%}

num [0-9]+
decimal [0-9]+"."[0-9]+
variable [a-z|A-Z|_][a-z|A-Z|_|0-9]*
cadenaV [\"][A-Z|a-z|0-9|[:blank:]]*[\"]
potencia ["P""p"]["O""o"]["W""w"]
modulo ["M""m"]["O""o"]["D""d"]
parentesis "("|")"
coma ","
pyc ";"
saltoDeLinea "\n"

%%

{num} { 
	printf("Numero entero: %s\n",yytext);
    yylval.dato.tipo = 1;
    yylval.dato.entero = atoi(yytext);
    return DATO; 
}
{decimal} { 
	printf("Numero decimal: %s\n",yytext);
    yylval.dato.tipo = 2;
    yylval.dato.doble = atof(yytext);
    return DATO;
}     
{cadenaV} {
	int i, j;
    char c = yytext[0];
	int largo = tam(yytext)-2;
	char* aux;
	aux = (char*)malloc(largo + 1);			
	aux = quitarComilla(yytext, largo+1);
	printf("Cadena Válida: %s\n",aux);
    yylval.dato.tipo = 3;
	yylval.dato.string = malloc(255);
    for(i=0;c!='\0';i++){
		c=yytext[i+1];
	}
    for(j=0;j<(i-2);j++){
		yylval.dato.string[j]=yytext[j+1];
	}                     
    return DATO;
}           
"+" 	{
  	printf("Operador SUMA\n");
	return yytext[0];
}    
"-" 	{
    printf("Operador MENOS\n");
	return (yytext[0]);
}    
"*"		{
    printf("Operador MULTIPLICACION\n");
	return yytext[0];
}
"/"		{
	printf("Operador DIVISION\n");
	return yytext[0];
}
"%"		{
	printf("Operador MODULO\n");
	return yytext[0];
}    
{potencia} {
	printf("Operador POTENCIA\n");
	return POW;
}
"="		{
	printf("Operador de asignación\n");
	return yytext[0];
}
","		{
	printf("Coma\n");
	return (yytext[0]);
}    	
{pyc} 	{
    printf("Punto y coma\n");
    return (yytext[0]);
    	}
{parentesis} { 	
	printf("Parentesis\n");
	return (yytext[0]); 
}
{saltoDeLinea} {
	printf("Salto de linea\n");
    return EOL;
}
int {
	printf("Tipo de Dato INT\n");
	return INT;
}
double {
	printf("Tipo de Dato DOUBLE\n");
	return(DOUBLE);
}
string {
	printf("Tipo de Dato STRING\n");
	return(STRING);
}
{variable}	{
	printf("Variable => %s\n",yytext);
	int i, j;
    char c=yytext[0];
    for(i=0;c!='\0';i++){
        c=yytext[i+1];
	}
	yylval.cadena = malloc(i+1);
    for(j=0;j<i;j++){
        yylval.cadena[j]=yytext[j];
	}
	yylval.cadena[i]='\0';
    return ID;
}	
& {
	printf("Operador para Imprimir TS\n");
	return yytext[0];
}

%%
int tam(char* cadena){
	int cont = 0; 
	while(*cadena != '\0'){
		cont++;
		cadena++;
	}
	return cont;
}
char *quitarComilla(char* yytext,int largo){
	int i;
	char* nueva;
	nueva = (char*)malloc(largo);
	for(i = 1; i < largo; i++){
		nueva[i-1] = yytext[i];
	}
	nueva[i]='\0';
	return (char*)nueva;
}