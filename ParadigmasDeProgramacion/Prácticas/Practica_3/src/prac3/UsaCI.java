/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prac3;

/**
 *
 * @author joelc
 */
public class UsaCI {
    public static void main(String[] args){
        //Se manda llamar al constructor y se inicializa el primer objeto de la clase CuentaInversion
        CuentaInversion cuenta1 = new CuentaInversion("Jeris89", 30000.500,0.45, "Juan");        
        cuenta1.deposito(5000.70);
        cuenta1.retiro(3000.00);
        System.out.println("El interes es de "+ cuenta1.calcularIntereses() + " pesos.");        
        System.out.println("El balance final es de "+ cuenta1.obtenerBalance() + " pesos.");                                   
    }
    
}
