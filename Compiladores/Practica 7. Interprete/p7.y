%{
	//Estructuras 
	typedef struct nodo{
		int tipoD; 					
		char *nomVar;
		char *valVar;		
		struct nodo *sig;
	}Lista;

	typedef struct datos{
		int tipo;
		int entero;
		double doble;
		char* string;
	}Dato;

	typedef struct cola{
		Lista *first;
		Lista *last;
		int size;
	}Cola;

	//Bibliotecas
	#include <stdio.h>
	#include <math.h>
	#include <stdlib.h> 
	#include <stdbool.h>

	//Prototipos
	int yylex (void);											// yylex
	void yyerror (char *s);										// yyerror
	void push(char *nomVar,char *valVar,int tipoD);				// Agrega datos a la cola
	void impTs();												// Imprime la TS
	bool busqNom(char *);										// Busca el nombre de la variable en la cola
	void modify(char *nomVar,char *valVar,int tipo);			// Modifica el valor de lavariable
	struct nodo consulta(char *nomVar);							// Consigue el elemento de la cola
	char* concatCad(char *cad1, char *cad2);					// Concatena 2 cadenas
	int tamano(char* cadena);									// Regresa el tamaño de la cadena
	int compararcadenas(const char* s1, const char* s2);		// Compara ambas cadenas
	char *resCad(char *c1, char* c2);							// Resta dos cadenas
	char* powCad(char *c1,int exp);								// Realiza la potencia de dos cadenas

	Cola *new;												//Cola
%}
             
/* Declaraciones de BISON */
%union{
	char* cadena;
	struct datos dato;
}

/*Declaración de Tokens (Terminales)*/
%token INT
%token DOUBLE
%token STRING
%token <dato> DATO
%token <cadena> ID
%token POW
%token EOL

/*Declaración de Tipos (NO Terminales)*/
%type <dato> op

/*Jerarquía de Operaciones*/
%left '+' '-'
%left '*' '/' '%' POW
             
/* Gramática */
%%             
input:    /* cadena vacía */
    | input line             
;
line:     EOL
    | op EOL {
		if($1.tipo == 1){
			printf("\t Resultado Entero: %d\n",$1.entero);
        }
        if($1.tipo==2){
			printf("\t Resultado Flotante: %f\n",$1.doble);
		}
        if($1.tipo==3){
        	printf("\t Cadena Generada: %s\n",$1.string);
		}
	}
	| '&' EOL {
		int opc;
		printf("Desea Imprimir la Tabla de Símbolos?\n");
		printf("1 ----> SI\n0 ----> NO\n");		
		scanf("%d",&opc);
		if(opc == 1){
			impTs();
		}		
    }	
;
op:     DATO	 { $$ = $1; }
	| op '+' op {
		if( $1.tipo==1 && $3.tipo==1) {
			$$.tipo = 1;
			$$.entero = $1.entero + $3.entero;	
		}
		else if( $1.tipo==1 && $3.tipo==2 ) {
			$$.tipo = 2;
			$$.doble = $1.entero + $3.doble;	
		}
		else if( $1.tipo==2 && $3.tipo==1 ) {
			$$.tipo = 2;
			$$.doble = $1.doble + $3.entero;	
		}
		else if( $1.tipo==2 && $3.tipo==2 ) {
			$$.tipo = 2;
			$$.doble = $1.doble + $3.doble;	
		}
		else if( $1.tipo==3 && $3.tipo==3 ) {
			$$.tipo=3;
			$$.string = concatCad($1.string,$3.string);		
		}
		else {
			yyerror("ERROR:  No son compatibles los tipos de dato\n");
		}	    									
	}
	| op '-' op { 
		if($1.tipo==1&&$3.tipo==1) {
			$$.tipo = 1;
			$$.entero = $1.entero - $3.entero;	
		}
		else if($1.tipo==1&&$3.tipo==2) {
			$$.tipo = 2;
			$$.doble = $1.entero - $3.doble;	
		}
		else if($1.tipo==2&&$3.tipo==1) {
			$$.tipo = 2;
			$$.doble = $1.doble - $3.entero;	
		}
		else if($1.tipo==2&&$3.tipo==2) {
			$$.tipo = 2;
			$$.doble = $1.doble - $3.doble;	
		}
		//String - String
        else if($1.tipo==3 && $3.tipo==3) {			
            $$.tipo=3;

			$$.string = resCad($1.string,$3.string);
            
	   	}else {
			yyerror("ERROR:  No son compatibles los tipos de dato\n");
		}
	}
	| op '*' op { 
		if($1.tipo==1&&$3.tipo==1) {
			$$.tipo = 1;
			$$.entero = $1.entero * $3.entero;	
		}
		else if($1.tipo==1&&$3.tipo==2) {
			$$.tipo = 2;
			$$.doble = $1.entero * $3.doble;	
		}
		else if($1.tipo==2&&$3.tipo==1) {
			$$.tipo = 2;
			$$.doble = $1.doble * $3.entero;	
		}
		else if($1.tipo==2&&$3.tipo==2) {
			$$.tipo = 2;
			$$.doble = $1.doble * $3.doble;	
		}
		else {
			yyerror("ERROR:  No son compatibles los tipos de dato\n");
		}
	}
	| op '/' op {
		if($1.tipo==1&&$3.tipo==1) {
			$$.tipo = 1;
			$$.entero = $1.entero / $3.entero;	
		}
		else if($1.tipo==1&&$3.tipo==2) {
			$$.tipo = 2;
			$$.doble = $1.entero / $3.doble;	
		}
		else if($1.tipo==2&&$3.tipo==1) {
			$$.tipo = 2;
			$$.doble = $1.doble / $3.entero;	
		}
		else if($1.tipo==2&&$3.tipo==2) {
			$$.tipo = 2;
			$$.doble = $1.doble / $3.doble;	
		}
		else {
			yyerror("ERROR:  No son compatibles los tipos de dato\n");
		}
	}
    | op '%' op { 
        if($1.tipo==1&&$3.tipo==1) {
            $$.tipo=1;
            $$.entero=$1.entero%$3.entero;	
        }
        else if($1.tipo==1&&$3.tipo==2) {
            $$.tipo=2;
            $$.doble=fmod($1.entero,$3.doble);	
        }
        else if($1.tipo==2&&$3.tipo==1) {
            $$.tipo=2;
            $$.doble=fmod($1.doble,$3.entero);	
        }
        else if($1.tipo==2&&$3.tipo==2) {
            $$.tipo=2;
            $$.doble=fmod($1.doble,$3.doble);	
        }
        else
            yyerror("ERROR:  No son compatibles los tipos de dato\n");
	}
    | POW '(' op ',' op ')' { 
        if( $3.tipo == 1 && $5.tipo == 1 ) {
        	$$.tipo = 2;
        	$$.doble = pow( $3.entero, $5.entero);	
        }
		else if($3.tipo==1&&$5.tipo==2) {
        	$$.tipo=2;
        	$$.doble=pow($3.entero,$5.doble);	
		}
        else if($3.tipo==2&&$5.tipo==1) {
        	$$.tipo=2;
            $$.doble=pow($3.doble,$5.entero);	
        }
        else if($3.tipo==2&&$5.tipo==2) {
        	$$.tipo=2;
            $$.doble=pow($3.doble,$5.doble);	
        }
        else if( $3.tipo == 3 && $5.tipo == 1) {
        	$$.tipo = 3;
			$$.string = powCad($3.string,$5.entero);
			
        }else
        	printf("ERROR: No son compatibles los tipos de dato\n");
	}
	| '-' op { 
		if($2.tipo==1) {
			$$.tipo = 1;
			$$.entero = - $2.entero;	
		}
		else if($2.tipo==2) {
			$$.tipo = 2;
			$$.doble = - $2.doble;	
		}
		else {
			printf("ERROR: No son compatibles los tipos de dato\n");
		}
	}
	| '+' op { 
		if($2.tipo==1) {
			$$.tipo = 1;
			$$.entero = $2.entero;	
		}
		else if($2.tipo==2) {
			$$.tipo = 2;
			$$.doble = $2.doble;	
		}
		else {
			printf("ERROR: No son compatibles los tipos de dato\n");
		}
	}
	| INT ID ';' {
		if(busqNom($2)==0){
			push($2,NULL,1); 
			$$.tipo = 1;
			$$.entero = 0;
			printf("Variable de tipo ENTERO sin asignar\n\n");
		}else{
			printf("ERROR: Ya existe una variable con ese nombre\n");
		}
	}
	| INT ID '=' op ';' { 
		char *s=malloc(sizeof(char) * 128); 
		char *nomVar=malloc(sizeof(char) * 128); 
		nomVar=$2; 
		if(busqNom($2)==0){
			if($4.tipo==1||$4.tipo==2){
				if($4.tipo==2)
					snprintf(s, sizeof(s), "%f", $4.doble);
				else {
					snprintf(s, sizeof(s), "%d", $4.entero);
				}
				push(nomVar,s,1);
				printf("Variable de tipo ENTERO asignada\n\n");
				$$.tipo = 1;
				$$.entero = $4.entero;
			}else{
				printf("ERROR: No son compatibles los tipos de dato");
			} 						
		}else{
			printf("ERROR: Ya existe una variable con ese nombre\n");
		}
	}
	| DOUBLE ID ';' { 
		if(busqNom($2)==0){
			push($2,NULL,2); 
			printf("Variable de tipo DOUBLE sin asignar\n\n");
			$$.tipo = 2;
	 		$$.doble = 0;
	 	}else{
			printf("ERROR: Ya existe una variable con ese nombre\n");
	 	}
	}
	| DOUBLE ID '=' op ';' { 
		char *s=malloc(sizeof(char) * 128); 
	   	char *nomVar=malloc(sizeof(char) * 128); 
	   	nomVar=$2; 
	   	if(busqNom($2)==0){
			if($4.tipo==2||$4.tipo==1){
				if($4.tipo==1){
				   	snprintf(s, sizeof(s), "%d", $4.entero);
			   	}else{
					snprintf(s, sizeof(s), "%f", $4.doble);
					push(nomVar,s,2);
					printf("Variable de tipo DOUBLE asignada\n\n");
					$$.tipo = 2;
					$$.doble = $4.doble;
				}
			}else{
				printf("ERROR: No son compatibles los tipos de dato\n");
			} 						
		}else{
			printf("ERROR: Ya existe una variable con ese nombre\n");
		}
	}
	| STRING ID ';' { 
		if(busqNom($2)==0){
			push($2,NULL,3); 
			printf("Variable de tipo STRING sin asignar\n\n");
			$$.tipo = 3;
			$$.string = NULL;			
		}else{
			printf("ERROR: Ya existe una variable con ese nombre\n");
		}
	}
	| STRING ID '=' op ';' { 
		char *s=malloc(sizeof(char) * 128); 
	   	char *nomVar=malloc(sizeof(char) * 128); 
	   	nomVar=$2; 
	   	if(busqNom($2)==0){
			if($4.tipo==3){
			   	push(nomVar,$4.string,$4.tipo);
				printf("Variable de tipo STRING asignada\n\n");
				$$.tipo = 3;
				$$.string = $4.string;
			}else{
				printf("ERROR: No son compatibles los tipos de dato\n");
			}
		}else{
			printf("ERROR: Ya existe una variable con ese nombre\n");
		}
	}
	| ID '=' op ';' { 							
		char *nomVar = malloc( sizeof(char) * 128); 
		nomVar=$1;
   		if(busqNom(nomVar)==0){
			printf("ERROR: Variable no declarada\n");
		}else{
			if($3.tipo==1){
				char *s = malloc( sizeof(int) ); 
				snprintf(s, sizeof(s), "%d", $3.entero);
				modify(nomVar,s,$3.tipo);
			}else if($3.tipo==2){
				char *s = malloc( sizeof(double) ); 
				snprintf(s, sizeof(s), "%f", $3.doble);
				modify(nomVar,s,$3.tipo);
			}
			else if($3.tipo==3){
				modify(nomVar,$3.string,$3.tipo);
			}
		}
	}
	| ID {
		struct nodo aux;
		aux.nomVar = malloc(255);
		aux.valVar = malloc(255);
		aux = consulta($1);
		if( aux.tipoD == 1){
			$$.tipo=aux.tipoD;
			if(aux.valVar!=NULL) {
				$$.entero=atoi(aux.valVar);
			}
		}
		if(aux.tipoD==2){
			$$.tipo=aux.tipoD;
			$$.doble=atof(aux.valVar);
		}
		if(aux.tipoD==3){
			$$.tipo=aux.tipoD;
			$$.string=aux.valVar;
		}
		if(aux.tipoD==4){
			printf("ERROR: Variable no declarada\n");
		}	
    }	
;        
%%
void main() {
	new=(Cola*)malloc(sizeof(Cola));
	new->size=0;
	new->last=NULL;
	new->first=NULL;
  	yyparse();
}             
void yyerror (char *s) {
	printf("%s\n", s);
}            
int yywrap() {  
	return 1;  
}
void push(char *nomVar,char *valVar,int tipoD){
	if(busqNom(nomVar)==1){
		//printf("ERROR: Ya existe una variable con ese nombre\n");
	}else{
		if(new->size==0){
			Lista *i;
			i=(Lista*)malloc(sizeof(Lista));
			i->nomVar=malloc(sizeof(char) * 128);
			i->valVar=malloc(sizeof(char) * 128);
			i->nomVar=nomVar;
			i->valVar=valVar;
			i->tipoD=tipoD;
			i->sig=NULL;
			new->first=i;
			new->last=i;
			new->size++;
			}
		else {
			Lista *i;
			i=(Lista*)malloc(sizeof(Lista));
			i->nomVar=malloc(sizeof(char) * 128);
			i->valVar=malloc(sizeof(char) * 128);
			new->last->sig=i;
			i->nomVar=nomVar;
			i->valVar=valVar;
			i->tipoD=tipoD;
			i->sig=NULL;
			new->last=i;
			new->size++;
		}
	}
}
void impTs(){
	struct nodo *nodoAux;
	nodoAux=NULL;
	if(new->first==NULL&&new->last==NULL){
		//printf("ERROR: No hay nada que imprimir\n");										
	}else{			
		printf("-------------------------------------\n");
		printf("|               TS                  |\n");
		printf("-------------------------------------\n");
		nodoAux=new->first;
		do{ 
			if(nodoAux->tipoD == 1){
				printf("    Nombre de Variable: %s \n",nodoAux->nomVar);				
				if(nodoAux->valVar == NULL){					
					printf("    Valor de Variable: %s \n",nodoAux->valVar);				
				}else{		
					printf("    Valor de Variable: %d \n",atoi(nodoAux->valVar));
				}
				printf("    Tipo de Dato: int \n");
				printf("------------------------------------\n");
			}
			else if(nodoAux->tipoD == 2){
				printf("    Nombre de Variable: %s \n",nodoAux->nomVar);				
				if(nodoAux->valVar == NULL){					
					printf("    Valor de Variable: %s \n",nodoAux->valVar);				
				}else{		
					printf("    Valor de Variable: %.2f \n",atof(nodoAux->valVar));
				}
				printf("    Tipo de Dato: int \n");
				printf("------------------------------------\n");
			}
			else if(nodoAux->tipoD == 3){
				printf("    Nombre de Variable: %s \n",nodoAux->nomVar);
				if(nodoAux->valVar == NULL){
					printf("    Valor de Variable: %s \n",nodoAux->valVar);				
				}else{
					printf("    Valor de Variable: %s \n",nodoAux->valVar);
				}			
				printf("    Tipo de Dato: string \n");
				printf("--------------------------------------\n");
			}
			//printf("Id: %s, Valor: %s, Value %d\n",nodoAux->nomVar,nodoAux->valVar,nodoAux->tipoD);
			nodoAux=nodoAux->sig;
		}while(nodoAux);
		printf("\n");															
	}	
}
bool busqNom(char *nomVar){
	struct nodo *nodoAux;
	bool encontrado;
	encontrado=false;		
	nodoAux=NULL;
	if(new->first==NULL&&new->last==NULL){
		//printf("ERROR: No hay nada que imprimir\n");
	}else{
		nodoAux=new->first;
		do{ 
			if(compararcadenas(nodoAux->nomVar,nomVar) == 0){
				//printf("Id: %s, Valor: %s",nodoAux->nomVar,nodoAux->valVar);
				if(nodoAux->tipoD==1)
				printf(" Tipo: int\n");
				if(nodoAux->tipoD==2)
				printf(" Tipo: double\n");
				if(nodoAux->tipoD==3)
				printf(" Tipo: String\n");
				encontrado=true;
			}
			nodoAux=nodoAux->sig;
		}while(nodoAux);
		printf("\n");
	}
	return encontrado;	
}
void modify(char *nomVar,char *valVar, int tipo){
	struct nodo *nodoAux;
	nodoAux=NULL;
	if(new->first==NULL&&new->last==NULL){
		//printf("ERROR: No hay nada que imprimir\n");
	}else{
		//printf("Elementos encontrados:\n");
		nodoAux=new->first;
		do{ 
			if(compararcadenas(nodoAux->nomVar,nomVar) == 0){
				if(nodoAux->tipoD==tipo||(tipo==2&&nodoAux->tipoD==1)||(tipo==1&&nodoAux->tipoD==2)){
				nodoAux->valVar=valVar;
				//printf("Id: %s, Valor: %s, Value %d\n",nodoAux->nomVar,nodoAux->valVar,nodoAux->tipoD);
				}else{
				printf("ERROR: No son compatibles los tipos de dato\n");
				}
			}
			nodoAux=nodoAux->sig;
		}while(nodoAux);
		//printf("\n");
	}
}
struct nodo consulta(char *nomVar){
	struct nodo *nodoAux;
	struct nodo aux;
	aux.nomVar=malloc(255);
	aux.valVar=malloc(255);
	nodoAux=NULL;
	if(new->first==NULL&&new->last==NULL){
		//printf("ERROR: No hay nada que imprimir\n");
	}else{
		//printf("Elementos encontrados:\n");
		nodoAux=new->first;
		do{ 
			if(compararcadenas(nodoAux->nomVar,nomVar) == 0){
				aux=*nodoAux;
				return aux;
			}
			nodoAux=nodoAux->sig;
		}while(nodoAux);
		printf("\n");
	}
	aux.tipoD=4;
	return aux;	
}
char* concatCad(char *cad1, char *cad2){
	int i = 0;	
	int j = 0;
	char *newCad;
	size_t longc1 = tamano(cad1);
	size_t longc2 = tamano(cad2);
	size_t longTot = longc1 + longc2;
	newCad = (char*)malloc(longTot + 1);
		for(i=0; i < longc1; i++){
			if(cad1[i]!='"')
				newCad[j++] = cad1[i];
		}
		for(i = 0; i < longTot; i++)
			if(cad2[i]!='"')
				newCad[j++] = cad2[i];
	newCad[j] = '\0';
	return newCad;
}
int tamano(char* cadena){
	int i = 0; 
	while(*cadena != '\0'){
		i++;
		cadena++;
	}
	return i;
}

int compararcadenas(const char* s1, const char* s2){
	while(*s1 && (*s1 == *s2)){
		s1++;
		s2++;
	}
	return *s1 - *s2;
}
char* powCad(char *c1,int exp){
	int i, j, n, c;
	char *cadTot = malloc(255);
			for(i=0; c1[i] != '\0'; i++);
			char* aux;
			aux = (char*) malloc ( sizeof(char) * i );
			if( exp > 0 ) {
				cadTot = (char*) malloc( sizeof(char) * i * exp);
				for( n = 0; n < i; n++ ) {
					aux[n] = c1[n];
				}
				for	(j = 0; j < exp; j++) {
					for	(n = 0; n < i; n++) {
						cadTot[j * i + n] = aux[n];
					}
				}
			} else {
				cadTot = (char*) malloc( sizeof(char) *i * exp * -1);
				c=i-1;
				for( n=0; n<i; n++ ) {
					aux[n] = c1[c];
					c--;
				}
				for	(j = 0; j < exp * -1; j++) {
					for	(n=0; n<i; n++) {
						cadTot[j * i + n] = aux[n];
					}
				}
			}
	return cadTot;
}
char *resCad(char *c1, char* c2){
	int i, j, n, c, bandera, tam;
	char *cadTot = malloc(255);
	for( i = 0; c1[i] != '\0'; i++) {
        for(j=0; c1[i+j] != '\0' && c2[j] != '\0'; j++ ) {
	       	if(c1[i+j] == c2[j]) {
	            bandera=1;
	       	} else {
	            bandera=0;
	            break;
	        }
        }
		if(bandera == 1 && c2[j]=='\0'){
            for(n=0;c1[n]!='\0';n++);
            for(c=0;c2[c]!='\0';c++);
            for(n=0;n<i;n++) {
				cadTot[n]=c1[n];
            }
			for(i+=c;c1[i]!='\0';i++) {
			    cadTot[n++]=c1[i];
			}
		}
    }
	return cadTot;
}