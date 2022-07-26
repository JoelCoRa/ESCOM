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
public class Pelicula {
    protected Time duracion;
    protected Time horario;
    protected String director;
    protected double precio;
    protected String nombreP;    
    //Constructor
    public Pelicula(String director, double precio, String nombreP) {
        this.nombreP = nombreP;
        this.director = director;
        this.precio = precio;
        duracion = new Time(02,25,32);
        horario = new Time(19,30,00);
    }      
    
     
    public void imprimirCartelera(){        
        System.out.println("Película: "+nombreP);
        System.out.println("Director: "+director);
        System.out.println(horario.imprimirHorario());
        System.out.println("Precio de entrada: "+precio);        
    }
    public void venderEntrada(double entrada, String nombreP,double precio){  
        double total = 0;        
        System.out.println("Se han vendido "+entrada+" entradas para "+nombreP);
        total = entrada * precio;
        System.out.println("Recaudando un total de: $"+total+" mxn.\n");
    }   

}
