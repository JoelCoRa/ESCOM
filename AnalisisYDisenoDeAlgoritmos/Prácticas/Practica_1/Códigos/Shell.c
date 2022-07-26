/*        Algoritmo de ordenamiento Shell
       Autor: Colín Ramiro Joel
       Fecha:29/03/2021
       Versión: 1
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define tam 350000


int main(){
	int contador=0;
	int i,j,k,incremento,aux;
	int arreglo[tam];
	srand(time(NULL));
	for(i=0;i<tam;i++){
		arreglo[i] = rand()%tam;
	}
    
	
    
    incremento=tam/2;
    
    while(incremento>0){
        for(i=incremento+1;i<=tam;i++){
            j=i-incremento;
            while(j>0){
                if(arreglo[j]>=arreglo[j+incremento]){
                    aux = arreglo[j];
                    arreglo[j] = arreglo[j+incremento];
                    arreglo[j+incremento] = aux;
                    contador++;
                }
                else{
                        j=0;
                }
                j=j-incremento;
            }
        }
        incremento=incremento/2;
        	
	}
	for(i=0; i<tam;i++){
		printf("%d ",arreglo[i]);	
	}
	printf("\n%d ",contador);
  
    return 0;
}


