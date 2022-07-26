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
public class Comedia extends Pelicula{
    private int numPersonajesPrincipales;
    private int numChistes;
    private double nivelFelicidad;   
    

    public Comedia(int numPersonajesPrincipales, int numChistes, double nivelFelicidad, String director, double precio, String nombreP) {
        super(director, precio,nombreP);
        this.numPersonajesPrincipales = numPersonajesPrincipales;
        this.numChistes = numChistes;
        this.nivelFelicidad = nivelFelicidad;
        duracion = new Time(02,25,32);        
        horario = new Time(19,10,00);
        
    }

    public int getNumPersonajesPrincipales() {
        return numPersonajesPrincipales;
    }

    public int getNumChistes() {
        return numChistes;
    }

    public double getNivelFelicidad() {
        return nivelFelicidad;
    }              
    
    @Override
    public void imprimirCartelera(){  
        precio = 50.00;
        System.out.println("Película: "+nombreP);
        System.out.println("Director: "+director);
        System.out.println("Genero: Comedia");        
        System.out.println(horario.imprimirHorario());
        System.out.println(duracion.imprimirDuracion());
        System.out.println("Precio de entrada: $"+precio+" mxn"); 
        System.out.println("Número de personajes principales: "+numPersonajesPrincipales);
        System.out.println("Cantidad de chistes: "+numChistes);
        System.out.println("Nivel de Felicidad: "+nivelFelicidad+"\n");
               
    }
    @Override
    public void venderEntrada(double entrada, String nombreP,double precio){  
        double total = 0;        
        System.out.println("Se han vendido "+entrada+" entradas para "+nombreP);
        total = entrada * precio;
        System.out.println("Recaudando un total de: $"+total+" mxn.\n");
    } 
    
    
}
