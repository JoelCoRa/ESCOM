/*        Algoritmo de ordenamiento de selección
       Autor: Colín Ramiro Joel
       Fecha:29/03/2021
       Versión: 1
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define taille 5
#define tam 350000
int main(){
	int contador=0;
	int actual, mas_pequeno, j, temp,i;
	int vector[tam];
	srand(time(NULL));
	for(i=0;i<tam;i++){
		vector[i] = rand()%tam;
	}
 
     for (actual = 0; actual < taille - 1; actual++)
     {
         mas_pequeno = actual;
         for (j = actual+1; j < taille; j++){
         	 if (vector[j] < vector[mas_pequeno]){
         	 	  mas_pequeno = j;
		          temp = vector[actual];
		          vector[actual] = vector[mas_pequeno];
		          vector[mas_pequeno] = temp;
		          contador++;
			  }
                 
		 }
             
     }
	for(i=0;i<tam;i++){
		printf("%d ",vector[i]);
	}
	printf("\n%d ",contador);
	
	
	return 0;
}
