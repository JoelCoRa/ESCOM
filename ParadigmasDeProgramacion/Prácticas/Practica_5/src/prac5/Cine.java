/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prac5;

/**
 *
 * @author joelc
 */
public class Cine {
    protected String nombre;
    private String ubicacion;

    public Cine(String nombre, String ubicacion) {
        this.nombre = nombre;
        this.ubicacion = ubicacion;
    }   

    public String getUbicacion() {
        return ubicacion;
    }    
    
    public void venderEntrada(double entrada){
        System.out.println("La entrada ha sido vendida ");
     
    }
    public void imprimirCine(){
        System.out.println("Cine: " +nombre+".");
        System.out.println("Ubicación: "+ubicacion+".\n");
        System.out.println("*************Cartelera*************");
    }
    
    
    
}
