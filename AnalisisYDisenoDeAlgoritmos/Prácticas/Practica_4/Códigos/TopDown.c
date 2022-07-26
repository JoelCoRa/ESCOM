/*  Algoritmo de Fibonacci (Top Down)
  Fecha:24/May/2021
  Versi�n: 0.1
  Autores: Ramirez Jimenez Itzel Guadalupe
           Col�n Ramiro Joel
*/

#include<stdio.h>

// El algoritmo pedir� al usuario la posici�n de la serie y regresar� el n�mero en la posici�n indicada
int fibonacci(int N)
{
    if(N <= 1)
        return N;
    return Fibonacci(N-1) + fibonacci(N-2);
}

int main()
{
    int n;
    printf("Ingrese la posici�n de la serie: ");
    scanf("%d",&n);
    printf("fib(%d) = %d\n",n,fibonacci(n));

    return 0;
}

