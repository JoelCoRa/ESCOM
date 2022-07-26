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
public class Terror extends Pelicula{
    private String personajeTerror;
    private double nivelMiedo;
    
    public Terror(String personajeTerror, double nivelMiedo, String director, double precio, String nombreP){
        super(director,precio,nombreP);
        this.personajeTerror = personajeTerror;
        this.nivelMiedo = nivelMiedo;  
        duracion = new Time(01,55,43);
        horario = new Time(20,50,00);
    }

    public String getPersonajeTerror() {
        return personajeTerror;
    }

    public double getNivelMiedo() {
        return nivelMiedo;
    }     
    
    @Override
    public void imprimirCartelera(){ 
        precio = 65.00;
        System.out.println("Película: "+nombreP);
        System.out.println("Director: "+director);
        System.out.println("Genero: Terror");
        System.out.println(horario.imprimirHorario());
        System.out.println(duracion.imprimirDuracion());
        System.out.println("Precio de entrada: $"+precio+" mxn");  
        System.out.println("Personaje de Terror: "+personajeTerror);
        System.out.println("Nivel de miedo: "+nivelMiedo+"\n");
    }
    @Override
    public void venderEntrada(double entrada, String nombreP,double precio){  
        double total = 0;        
        System.out.println("Se han vendido "+entrada+" entradas para "+nombreP);
        total = entrada * precio;
        System.out.println("Recaudando un total de: $"+total+" mxn.\n");
    }  
}
