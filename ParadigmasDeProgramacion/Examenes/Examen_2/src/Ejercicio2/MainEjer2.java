/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ejercicio2;

/**
 *
 * @author joelc
 */
public class MainEjer2 {
    public static void main(String[] args){
        Escuela esc1 = new Escuela("IPN");
        Estudiante est1 = new EstudianteIntercambio("IPN","ISC",3,"México", "Ciudad de México");
        est1.imprimirDatos();
        esc1.imprimirDatos();
    }
}
