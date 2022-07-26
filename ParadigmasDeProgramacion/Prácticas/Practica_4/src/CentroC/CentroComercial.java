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
public class CentroComercial {
    private String domicilio;
    private double superficie;
    private String nombre;
    private int numPisos;
    private int añoConstruccion; 
    private Estacionamiento est;
    private TiendaDepartamental td;
    private Restaurante r;
    
    public CentroComercial(String domicilio, double superficie, String nombre,int numPisos,int añoConstruccion, Restaurante r){
        this.domicilio = domicilio;
        this.superficie = superficie;
        this.nombre = nombre; 
        this.numPisos = numPisos;
        this.añoConstruccion = añoConstruccion;
        est = new Estacionamiento(450,1790.75,5,5);
        td = new TiendaDepartamental("Nike","Deportes",2,"2018-07-21");
        this.r = r;
    }
    public String getDomicilio() {
        return domicilio;
    }
    public double getSuperficie() {
        return superficie;
    }
    public String getNombre() {
        return nombre;
    }
    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }
    public void setSuperficie(double superficie) {
        this.superficie = superficie;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public void imprimirCentroComercial(){
        System.out.println("El centro comercial "+nombre+" se ubica en "+domicilio);
        System.out.println(" cuenta con "+numPisos+", tiene una superficie de "+superficie);
        System.out.println(" metros cuadrados, se construyó en el año "+añoConstruccion+",");
        System.out.println(" además cuenta con un restaurante "+r.imprimirRestaurante()+" ");
        System.out.println(td.imprimirTienda());
    }
    
}
