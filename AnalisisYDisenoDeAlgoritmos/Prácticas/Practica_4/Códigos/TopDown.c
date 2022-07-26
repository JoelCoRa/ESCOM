/*  Algoritmo de Fibonacci (Top Down)
  Fecha:24/May/2021
  Versión: 0.1
  Autores: Ramirez Jimenez Itzel Guadalupe
           Colín Ramiro Joel
*/

#include<stdio.h>

// El algoritmo pedirá al usuario la posición de la serie y regresará el número en la posición indicada
int fibonacci(int N)
{
    if(N <= 1)
        return N;
    return Fibonacci(N-1) + fibonacci(N-2);
}

int main()
{
    int n;
    printf("Ingrese la posición de la serie: ");
    scanf("%d",&n);
    printf("fib(%d) = %d\n",n,fibonacci(n));

    return 0;
}

