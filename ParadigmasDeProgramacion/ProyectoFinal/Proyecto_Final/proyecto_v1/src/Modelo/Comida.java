package Modelo;
import java.util.ArrayList;

public class Comida extends Receta{
    private int porciones;
    private boolean vegano;
    private boolean glutenFree;
    private boolean paraAdulto;
    
    public Comida(){
    
    }

    public Comida(int porciones, boolean vegano, boolean glutenFree, boolean paraAdulto, String nombre, int tiempoPreparacion, float precio, String ingredientes) {
        super(nombre, tiempoPreparacion, precio, ingredientes);
        this.porciones = porciones;
        this.vegano = vegano;
        this.glutenFree = glutenFree;
        this.paraAdulto = paraAdulto;
    }

    public int getPorciones() {return porciones;}
    public boolean isVegano() {return vegano;}
    public boolean isGlutenFree() {return glutenFree;}
    public boolean isParaAdulto() {return paraAdulto;}

    public void setPorciones(int porciones) {this.porciones = porciones;}
    public void setVegano(boolean vegano) {this.vegano = vegano;}
    public void setGlutenFree(boolean glutenFree) {this.glutenFree = glutenFree;}

    public void setParaAdulto(boolean paraAdulto) {
        this.paraAdulto = paraAdulto;
    }
}
