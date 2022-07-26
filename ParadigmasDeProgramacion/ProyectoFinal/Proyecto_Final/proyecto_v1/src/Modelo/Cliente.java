package Modelo;

public class Cliente extends Persona{
    private String direccion;   
    

    public Cliente(String direccion, String nombre, long numTelefono) {
        super(nombre, numTelefono);
        this.direccion = direccion;
    }
    
    public String getDireccion(){
        return this.direccion;
    }
    public String getNombre() {return nombre;}
    public long getNumTelefono() {return numTelefono;}
    
    public void setDireccion(String direccion) {this.direccion = direccion;}
    public void setNombre(String nombre) {this.nombre = nombre;}
    public void setNumTelefono(long numTelefono) {this.numTelefono = numTelefono;}
    
    @Override
    public String infoPersona(){
        return "Nombre: " + nombre + "\n Telefono: " + numTelefono + "\n Direccion: " + direccion;
    }
}
