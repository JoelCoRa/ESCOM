#include <stdio.h> 
#include <math.h> 
#include <stdlib.h> 
#include <time.h>



int maximo (int [], int, int);
int minimo (int [], int, int);

int main() {

	int lim; 

	printf("Digite el numero de elementos del arreglo : "); 		//longitud del arreglo 
	
	srand (time(NULL)); 
	
	scanf("%i",&lim); 
		
		int num[lim];  // arreglo
   
   for(int i = 0; i<lim; i++){	

		num[i] =  1 + rand()%lim;   	 		//llenamos el arreglo con numeros aleatorios   
		   			
   }
   
	printf("El arreglo es: \n [ ");    //imprimimos el arreglo 
	
	for(int i = 0; i<lim; i++){
   		
   		printf(" %i ",num[i]); 

   }
	
	printf(" ]");	
	
	printf("\nEl numero maximo del arreglo es: ", maximo(num, lim-1, num[0]));
	printf("\nEl numero minimo del arreglo es: ", minimo(num, lim-1, num[0]));
	    		
    
}

int maximo(int num[], int lim, int max){
		
		if(lim==0){
			return max;
		}			
		else {
 				
			if(num[lim]>max){
				max=num[lim];
			}		
			return maximo(num, lim-1, max);
		}
}

int minimo(int num[], int lim, int min){
	
		if(lim==0){
			return min;
		} 
			
		else{
			
			if(num[lim]<min){
				min=num[lim];
			}				
			return minimo(num, lim-1, min);
		}
			
}
