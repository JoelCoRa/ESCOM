package Complejo;

/**
 *
 * @author Joelc
 */
public class UsoComplejo {
 
    public static void main(String [] args){
    
    //Constructor -1-
    Complejo A =new Complejo();
    
    //Constructor -2- con 2 argumentos
    
     Complejo B =new Complejo(5,8);
    
     //Contructor -3- contiene elelemtos de B
     Complejo C= new Complejo(B);
     
void A.imprimir(){

System.out.println("El numero complejo A es:\n"Complejo A);
}

void B.imprimir(){

System.out.println("El numero complejo B es:\n"Complejo B);
}

void C.imprimir(){

System.out.println("El numero complejo C es:\n"Complejo C);
}
     //Sumar--> A con B ---> A= A+B
    Suma.ComplejoA=(Complejo (A)+Complejo(B))
void Suma.ComplejoA imprimir(){

System.out.println("La suma del complejo A + complejo B es:\n"Suma.ComplejoA);
}     
     //Sumar--> A con B y se asigna a C-->C= A+B
   Suma.ComplejoAB.C=(Complejo (A)+Complejo(B))
void Suma.ComplejoAB.C imprimir(){

System.out.println("El nuevo valor del complejo C es:\n"Suma.ComplejoAB.C);
}  
     C.imprimir();

    }
   }
