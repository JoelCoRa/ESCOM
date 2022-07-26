
package ClasesyObjetos;

/**
 *
 * @author joelc
 */
public class Main {
    public static void main(String[] args){
        
        Perro perro1 = new Perro();
        Perro perro2 = new Perro();
        
        
       perro1.raza= "Pastor Alemán";
        perro1.nombre = "bobby";
        perro1.edad = 3;
        
        perro2.raza = "Husky";
        perro2.nombre = "Solovino";
        perro2.edad = 7;
        
        System.out.println("La raza del primer perro es: " + perro1.raza );
        System.out.println("El nombre del primer perro es: " + perro1.nombre );
        System.out.println("La edad del primer perro es: " + perro1.edad );   
        
        System.out.println("La raza del segundo perro es: " + perro2.raza );
        System.out.println("El nombre del segundo perro es: " + perro2.nombre );
        System.out.println("La edad del segundo perro es: " + perro2.edad );   
    }
}
