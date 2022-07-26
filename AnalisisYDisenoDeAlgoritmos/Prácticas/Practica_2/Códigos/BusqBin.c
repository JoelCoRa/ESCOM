/*  Algoritmo de Búsqueda Binaria
  Fecha:30/Abr/2021
  Versión: 1
  Autores: Ramirez Jimenez Itzel Guadalupe
           Colín Ramiro Joel
*/




#include <stdio.h> 
#include <math.h> 
#include <stdlib.h> 

int busqueda_binaria(int arreglo[], int busqueda, int izquierda, int derecha);


int main(){
    
	int lim; 
	int busqueda;
	int aux; 
	int temp;
	int a,b; 
	printf("Digite el numero de elementos en el arreglo : ");
	
	scanf("%i",&lim); 
		
		int numeros[lim];  
   
   int g; 
   
   for(int i = 0; i<lim; i++){				
   		
		   g=i; 
   		
		   aux = 1 + rand()%lim;
   		
		   for(int d = 0; d <= g; d++){
   			
			   if(aux == numeros[d]){
   			
			   	g=g-g; 
   			
			   	i=i-1;
			   
			   }
			   
			   while((g==i) && (aux != numeros[d]) && (d==i)){
			 	
				 	numeros[i] = aux;   	 		//llenamos el arreglo con numeros aleatorios 
			   }
		   } 			
   }
   
	
	printf("El arreglo es: [ ");    //imprimimos el arreglo 
	
	for(int i = 0; i<lim; i++){
   		
   		printf(" %i ",numeros[i]); 

   }
	
	printf(" ]");	
	
	for(a = 0; a <lim; a++){
		for(b = 0; b <lim; b++){
			if(numeros[b]> numeros[b+1]){
				temp = numeros[b];
				numeros[b] = numeros [b+1];
				numeros[b+1] = temp; 
			}
		}
	}
	
	
	printf("\nEl arreglo ordenado es:  [ ");    //imprimimos el arreglo 
	
	for(int o = 0; o<lim; o++){
   		
   		printf(" %i ",numeros[o]); 

   }
	
	printf(" ]");
	
	
	int longitudDelArreglo = sizeof(numeros) / sizeof(numeros[0]);
    
    
	
	printf("\nDigite el numero a buscar: \n");
 	
	scanf("%i",&busqueda); 
 	
 	numeros[0] = busqueda; 
 	
    int resultado = busqueda_binaria(numeros, busqueda, 0, longitudDelArreglo);  
    
	printf("\n\nEl numero %i , esta en la posicion:  %d\n", busqueda, resultado+1);

}



int busqueda_binaria(int A[],int X, int i, int j)
{
	int medio;
   
    if (i>j) return 0;
   
    medio = (i+j) / 2;
   
    if (A[medio] < X) {
    
		return busqueda_binaria(A,X,medio+1,j);
	
	}
   
    else {
    	
		if (A[medio] > X) {
			
			return busqueda_binaria(A,X,i,medio-1);
		}
   
    	else {
    		
			return medio;
		
		}
	
	}
}

