/*        Algoritmo de ordenamiento de inserción
       Autor: Colín Ramiro Joel
       Fecha:29/03/2021
       Versión: 1
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define tam 350000

int main(){
	int contador= 0;
	int i, pos, aux;
	int num[tam];
	srand(time(NULL));
	for(i=0;i<tam;i++){
		num[i] = rand()%tam;
	}	
	for (i=0; i<tam; i++){
		
		pos = i;
		aux= num[i];
		
		while((pos > 0) && (num[pos-1] > aux)){
			num[pos] = num[pos-1];
			pos--;	
			contador++;		
		}
		num[pos] = aux;
	}
	for(i=0;i<tam;i++){
		printf("%d ",num[i]);
	}
	printf("\n%d ",contador);
	
	return 0;
}
