
package Ejercicio2;

/**
 *
 * @author joelc
 */
public class Escuela {
    protected String nombre;
    protected String siglas_esc;
    private String direccion;
    
   public Escuela(String siglas_esc){
       this.siglas_esc = siglas_esc;
   }

    public void set_nombre(String nombre) {
        this.nombre = nombre;
    }

    public void set_siglas_esc(String siglas_esc) {
        this.siglas_esc = siglas_esc;
    }

    public void set_direccion(String direccion) {
        this.direccion = direccion;
    }

    public String get_nombre() {
        return nombre;
    }

    public String get_siglas_esc() {
        return siglas_esc;
    }

    public String get_direccion() {
        return direccion;
    }   
    public void imprimirDatos(){
        System.out.println("Escuela: "+siglas_esc);
    }
   
}
