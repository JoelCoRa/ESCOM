package Modelo;
import java.util.ArrayList;

public class Postre extends Receta{
    private int porciones;
    private int nivelDeAmor;
    private int nivelDeDulzura;
    private String tipo;
    
    public Postre(){
    
    }

    public Postre(int porciones, int nivelDeAmor, int nivelDeDulzura, String tipo, String nombre, int tiempoPreparacion, float precio, String ingredientes) {
        super(nombre, tiempoPreparacion, precio, ingredientes);
        this.porciones = porciones;
        this.nivelDeAmor = nivelDeAmor;
        this.nivelDeDulzura = nivelDeDulzura;
        this.tipo = tipo;
    }

    public int getPorciones() {return porciones;}
    public int getNivelDeAmor() {return nivelDeAmor;}
    public int getNivelDeDulzura() {return nivelDeDulzura;}
    public String getTipo() {return tipo;}

    public void setPorciones(int porciones) {this.porciones = porciones;}
    public void setNivelDeAmor(int nivelDeAmor) {this.nivelDeAmor = nivelDeAmor;}
    public void setNivelDeDulzura(int nivelDeDulzura) {this.nivelDeDulzura = nivelDeDulzura;}
    public void setTipo(String tipo) {this.tipo = tipo;}
}
