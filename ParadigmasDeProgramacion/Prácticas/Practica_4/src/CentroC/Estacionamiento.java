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
public class Estacionamiento {
    private int numCarros;
    private double superficieE;
    private int entradas;
    private int salidas;
    
    public Estacionamiento(int numCarros, double superficieE,int entradas,int salidas){
        this.numCarros = numCarros;
        this.superficieE = superficieE;
        this.entradas = entradas;
        this.salidas = salidas;
    }
    public void ingresarCarro(int num){
        System.out.println("Ha ingresado un automovil.");
    }
}
