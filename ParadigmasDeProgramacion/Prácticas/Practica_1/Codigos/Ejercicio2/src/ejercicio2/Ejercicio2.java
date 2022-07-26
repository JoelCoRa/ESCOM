/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicio2;

import java.util.List;

/**
 *
 * @author itzel
 */
public class Ejercicio2 {
    
      public static void main(String[] args) {
    
     List<String> colors= List.of( "azul", "amarillo", "rojo", "morado");
  
        boolean hasRed = false;
        for (String color : colors) {
         if (color.equals("rojo")) {
        hasRed = true;
            break;
        }
    
       }
        System.out.println("¿El color es rojo? " + hasRed);
    
}
}
