/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ejer1;

/**
 *
 * @author joelc
 */
public class UsaCuentaBancaria {
    
    public static void main(String[] args){
        
        CuentaBancaria objCB1 = new CuentaBancaria();
        CuentaBancaria objCJ1 = new CuentaJoven();
        CuentaBancaria objCC1 = new CuentaCredito();
        
        objCB1.abono();
        objCB1 = objCJ1;
        objCB1.abono();
        objCC1.abono();
        
    }
}
