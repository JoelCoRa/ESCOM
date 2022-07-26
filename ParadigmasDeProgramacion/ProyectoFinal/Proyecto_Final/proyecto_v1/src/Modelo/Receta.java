package Modelo;
import java.util.ArrayList;

public class Receta{
    private static int IDre = 1;
    private int id;
    private String nombre;
    private int tiempoPreparacion;
    private float precio;
    private String ingredientes;
    
    public Receta(){
        id = IDre;
        IDre++;
    }

    public Receta(String nombre, int tiempoPreparacion, float precio, String ingredientes) {
        this.nombre = nombre;
        this.tiempoPreparacion = tiempoPreparacion;
        this.precio = precio;
        this.ingredientes = ingredientes;
    }

    public int getId() {return id;}
    public String getNombre() {return nombre;}
    public int getTiempoPreparacion() {return tiempoPreparacion;}
    public float getPrecio() {return precio;}
    public String getIngredientes() {return ingredientes;}

    public void setId(int id) {this.id = id;}
    public void setNombre(String nombre) {this.nombre = nombre;}
    public void setTiempoPreparacion(int tiempoPreparacion) {this.tiempoPreparacion = tiempoPreparacion;}
    public void setPrecio(float precio) {this.precio = precio;}
    public void setIngredientes(String ingredientes) {ingredientes = ingredientes;}
}