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
public class Estudiante extends Escuela {
    protected String carrera;
    protected int semestre;

    public Estudiante(String siglas_esc, String carrera, int semestre) {
        super (siglas_esc);
        this.semestre = semestre;
        this.carrera = carrera;
    }
    public void set_carrera(String carrera){
        this.carrera = carrera;
        
    }
    public void set_semestre(int semestre){
        this.semestre = semestre;
    }
    public String get_carrera(){
        return carrera;
    }
    public int get_semestre(){
        return semestre;
    }
    @Override
    public void imprimirDatos(){
        System.out.println("Estudio en "+siglas_esc+" la carrera de "+carrera+" y estoy en el semestre"+semestre);
    }  
}
