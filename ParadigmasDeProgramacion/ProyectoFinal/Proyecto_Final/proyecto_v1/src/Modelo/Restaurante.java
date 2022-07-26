package Modelo;
import java.util.ArrayList;

public class Restaurante {
    private String nombre;
    private String direccion;
    private long telefono;
    private ArrayList<Receta> recetas;
    private ArrayList<Pedido> pedidos;
    private ArrayList<Repartidor> repartidores;
    
    public Restaurante(){
        this.repartidores = new ArrayList<>();
        this.recetas = new ArrayList<>();
        this.pedidos = new ArrayList<>();
    }

    public String getNombre() { return nombre; }
    public String getDireccion() { return direccion; }
    public long getTelefono() { return telefono; }
    public ArrayList<Receta> getRecetas() {return recetas;}
    public ArrayList<Repartidor> getRepartidores() {return repartidores;}

    public void setNombre(String nombre) { this.nombre = nombre; }
    public void setDireccion(String direccion) { this.direccion = direccion; }
    public void setTelefono(long telefono) { this.telefono = telefono; }
    
    public void agregarReceta(Receta receta){
        this.recetas.add(receta);
    }
    public void agregarPedido(Pedido pedido){
        this.pedidos.add(pedido);
    }
    
    public void agregarRepartidor(Repartidor repartidor){
        this.repartidores.add(repartidor);
    }
}