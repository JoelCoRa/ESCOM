/*        Algoritmo de ordenamiento burbuja
       Autor: Colín Ramiro Joel
       Fecha:29/03/2021
       Versión: 1
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define tam 350000

int main(){
	int contador = 0;
	int i, j, aux;
	int numeros[tam];
	srand(time(NULL));
	for(i=0;i<tam;i++){
		numeros[i] = rand()%tam;
	}
	
	for(i=0 ; i<tam ;i++){
		for(j=0 ;j<tam;j++){
			if(numeros[j] > numeros[j+1]){
				aux = numeros[j];
				numeros[j] = numeros[j+1];
				numeros[j+1] = aux;
				contador++;
				
			}
		}
		
	}
	for(i=0 ; i<tam; i++){
		printf("%d ", numeros[i]);
	}
	printf("\n%d", contador);
	
	return 0;
}
