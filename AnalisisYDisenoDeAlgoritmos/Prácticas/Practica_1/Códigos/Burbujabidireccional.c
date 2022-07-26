/*        Algoritmo de ordenamiento burbuja bidireccional
       Autor: Colín Ramiro Joel
       Fecha:29/03/2021
       Versión: 1
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define tam 350000

int main(int argc, char** argv){
	int contador1=0, contador2=0, suma=0;
	int inicioIndice=0;
	int finIndice=tam-1;
	int i,aux,intercambio=0;
	int lista[tam];
	srand(time(NULL));
	for(i=0;i<tam;i++){
		lista[i] = rand()%tam;
	}

	//Recorrer la lista hasta que no haya números para ordenar
	while(inicioIndice<=finIndice){
		int nuevoPrimerIndice=finIndice,nuevoInicioIndice;
		int nuevoFinIndice=inicioIndice;
		
		//Ordenado hacia adelante
		for(i=inicioIndice;i<finIndice;i++){
			
			if(*(lista+i)>*(lista+i+1)){
				
				aux=*(lista+i);
				*(lista+i)=*(lista+i+1);
				*(lista+i+1)=aux;
				contador1++;
				intercambio=1;
				
				nuevoFinIndice=i;
			}
		}
		
			
		finIndice=nuevoFinIndice;
		intercambio=0;
		
		//Ordenado hacia atras
		for(i=finIndice;i>=inicioIndice;i--){
			
			if(*(lista+i)>*(lista+i+1)){
				
				aux=*(lista+i);
				*(lista+i)=*(lista+i+1);
				*(lista+i+1)=aux;
				contador2++;
				intercambio++;
				
				nuevoInicioIndice=i;
			}
		}
		
			
		
		inicioIndice=nuevoInicioIndice+1;
	}
	for(i=0;i<tam;i++){
		printf("%d ", lista[i]);
	}
	suma=contador1+contador2;
	printf("\n%d",suma);

	return 0;

}
