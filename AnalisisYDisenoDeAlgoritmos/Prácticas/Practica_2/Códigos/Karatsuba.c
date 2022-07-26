/*  Algoritmo de Multiplicación de enteros largos (Karatsuba)
  Fecha:30/Abr/2021
  Versión: 1
  Autores: Ramirez Jimenez Itzel Guadalupe
           Colín Ramiro Joel
*/



#include <stdio.h>

#include <math.h>



int Power(int x, int y); 
 
int Digitos (int n, int &dig);

int ultimos(int digitos, int &numero);

int primeros(int digitos, int &numero);

int karatsuba (int &u, int &v);
 
int main () {

    int numero=0;

    //cout << "MULTIPLICACION USANDO EL ALGORTIMO DE KARATSUBA:\n\n\n";

    int num1;
    int num2;
    
    printf("Digite el primer numero: ");
    scanf("%d", num1);
    printf("Digite el segundo numero: ");
    scanf("%d", num2);
    
    printf("\n\nEl resultado del producto es: ",karatsuba(num1, num2));

    /*cout << "Primer Numero:" << endl;
        cin >> num1;
    cout << "Segundo Numero: " << endl;
        cin >> num2;
        
            cout << "\n\n Numero 1=" << num1;
            cout << "\n\n Numero 2=" << num2;
			
    
	cout << "\n\nEl resultado del producto es: " << karatsuba(num1, num2);*/
	
	
    
	return 0;
    
}

 int Power(int x, int y) {
    if (y == 0)
        return (1);
    else if (y == 1)
        return(x);
    else
        return(x * Power(x, y-1));
}

int Digitos (int n, int &dig) {
    if (n < 10) return (dig+1);
    else {
        dig++;
        return(Digitos(n/10, dig));
    }
}

 int ultimos(int digitos, int &numero) {
    return numero % Power(10, digitos);
}

 int primeros(int digitos, int &numero) {
    return numero/Power(10, digitos);
}

 int karatsuba (int &no1, int &no2) {
	
	int dig1=0, dig2=0;
	
	int w, x, y, z, p, q, wMasx, zMasy, r, noDigitos;
	
    noDigitos = max(Digitos(no1, dig1), Digitos(no2, dig2));

    if (noDigitos <= 1) return no1*no2;

    noDigitos = (noDigitos / 2) + (noDigitos % 2);

     w = primeros(noDigitos, no1);
     x = ultimos(noDigitos, no1);
     y = primeros(noDigitos, no2);
     z = ultimos(noDigitos, no2);

     p=karatsuba(w, y);
     q=karatsuba(x, z);
     wMasx = w + x;
     zMasy = z + y;

     r= karatsuba(wMasx, zMasy);

    return Power(10, 2*noDigitos)*p+Power(10, noDigitos)*(r-p-q)+q;
}
