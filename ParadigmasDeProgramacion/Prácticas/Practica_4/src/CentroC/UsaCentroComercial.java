/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CentroC;

/**
 *
 * @author joelc
 */
public class UsaCentroComercial {
    public static void main(String[] args){
        Estacionamiento e1 = new Estacionamiento(450,1790,5,5);
        Restaurante res1 = new Restaurante("Burger King",40,15,"Fast food");
        CentroComercial cc1 = new CentroComercial("Av de la luz no.35", 15000, "Plaza de la luz",4,2015,res1);    
        cc1.imprimirCentroComercial();
    }
}
