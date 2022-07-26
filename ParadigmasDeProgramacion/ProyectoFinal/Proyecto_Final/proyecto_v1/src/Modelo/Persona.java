package Modelo;

public abstract class Persona {
    protected String nombre;
    protected long numTelefono;
    
    public Persona(){
    
    }

    public Persona(String nombre, long numTelefono) {
        this.nombre = nombre;
        this.numTelefono = numTelefono;
    }

    public void setNombre(String nombre) {this.nombre = nombre;}
    public void setNumTelefono(long numTelefono) {this.numTelefono = numTelefono;}
    
    public String getNombre(){return this.nombre;}
    public long getTelefono(){return this.numTelefono;}
    
    abstract String infoPersona();
}
