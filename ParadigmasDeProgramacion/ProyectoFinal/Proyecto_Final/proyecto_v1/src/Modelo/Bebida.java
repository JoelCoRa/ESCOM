package Modelo;
import java.util.ArrayList;

public class Bebida extends Receta{
    private String unidad;
    private float cantidad;
    private String tipo;
    
    public Bebida(){
        
    }

    public Bebida(String unidad, float cantidad, String tipo, String nombre, int tiempoPreparacion, float precio, String ingredientes) {
        super(nombre, tiempoPreparacion, precio, ingredientes);
        this.unidad = unidad;
        this.cantidad = cantidad;
        this.tipo = tipo;
    }

    public String getUnidad() {return unidad;}
    public float getCantidad() {return cantidad;}
    public String getTipo() {return tipo;}
    
    public void setCantidad(float cantidad) {this.cantidad = cantidad;}
    public void setUnidad(String unidad) {this.unidad = unidad;}
    public void setTipo(String tipo) {this.tipo = tipo;}
}
