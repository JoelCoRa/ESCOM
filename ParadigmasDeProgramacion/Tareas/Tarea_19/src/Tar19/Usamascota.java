
package Tar19;

/**
 *
 * @author joelc
 */
public class Usamascota {
    
    
    public static void main(String[] args){
        Mascota mascota = new Mascota();
        Mascota dog = new Perro();
        Mascota cat = new Gato();
        
        mascota.producirSonido();
        mascota = cat;
        mascota.producirSonido();
        dog.producirSonido();
        cat.producirSonido(); 
        
        
    }
}
