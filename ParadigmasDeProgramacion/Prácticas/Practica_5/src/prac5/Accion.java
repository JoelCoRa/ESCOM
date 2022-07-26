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
public class Accion extends Pelicula{
    private int numPersecuciones;
    private int numEnfrentamientos;
    private double nivelViolencia;

    public Accion(int numPersecuciones, int numEnfrentamientos, double nivelViolencia,String director, double precio, String nombreP){
        super(director, precio,nombreP);
        this.numPersecuciones = numPersecuciones;
        this.numEnfrentamientos = numEnfrentamientos;
        this.nivelViolencia = nivelViolencia;
        duracion = new Time(02,19,11);
        horario = new Time(15,20,00);
    }

    public int getNumPersecuciones() {
        return numPersecuciones;
    }

    public int getNumEnfrentamientos() {
        return numEnfrentamientos;
    }

    public double getNivelViolencia() {
        return nivelViolencia;
    }                  
    @Override
    public void imprimirCartelera(){  
        precio = 80.00;
        System.out.println("Película: "+nombreP);
        System.out.println("Director: "+director);
        System.out.println("Genero: Accion");        
        System.out.println(horario.imprimirHorario());
        System.out.println(duracion.imprimirDuracion());
        System.out.println("Precio de entrada: $"+precio+" mxn");  
        System.out.println("Cantidad de persecuciones: "+numPersecuciones);
        System.out.println("Cantidad de enfrentamientos: "+numEnfrentamientos);
        System.out.println("Nivel de violencia: "+nivelViolencia+"\n");
    }
    
    @Override
    public void venderEntrada(double entrada, String nombreP,double precio){  
        double total = 0;        
        System.out.println("Se han vendido "+entrada+" entradas para "+nombreP);
        total = entrada * precio;
        System.out.println("Recaudando un total de: $"+total+" mxn.\n");
    } 
    
}
