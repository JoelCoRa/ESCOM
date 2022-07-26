/*  Algoritmo Fibonacci (Button-up)
  Fecha:24/May/2021
  Versión: 0.1
  Autores: Ramirez Jimenez Itzel Guadalupe
           Colín Ramiro Joel
*/

#include <stdio.h>

// El algoritmo pedirá al usuario la posición de la serie y regresará el número en la posición indicada
int fibonacci(int n){
    
    int fib[n+1],i;   
    fib[0] = 0;
    fib[1] = 1;

    for(i = 2; i <= n; i++){
    	fib[i] = fib[i-1] + fib[i-2];
	}         
    return fib[n];
}

int main(){
    int n;
    printf("Ingrese la posición de la serie: ");
    scanf("%d",&n);
    
    if(n <= 1)
        printf("fib(%d) = %d\n",n,n);
    else
        printf("fib(%d) = %d\n",n,fibonacci(n));

    return 0;
}
