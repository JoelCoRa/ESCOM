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
public class Restaurante {
    private String nombre;
    private int numComensales;
    private int numMesas;
    private String espComida;

    public Restaurante(String nombre, int numComensales, int numMesas, String espComida) {
        this.nombre = nombre;
        this.numComensales = numComensales;
        this.numMesas = numMesas;
        this.espComida = espComida;
    }
    public String imprimirRestaurante(){
        return " el  cual es "+nombre+" y su especialidad es "+espComida+".";
    }
     
    public boolean agregarComensal(){
        numMesas--;        
        return true;
    }
}
