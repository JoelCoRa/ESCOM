/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

/**
 *
 * @author itzel
 */
public class Practica2 {

    /**
     * @param args the command line arguments
     */
    
    public static int existeEnArreglo(int[] arreglo, int busqueda) {
  for (int x = 0; x < arreglo.length; x++) {
    if (arreglo[x] == busqueda) {
      return x;
    }
  }
  return -1;
}
    
    public static void main(String[] args) {
        
        int numeros[] = new int[101];
        
        for (int i=0;i<=100;i++){
            
        numeros[i] = (int)(Math.random()*100);
       
        System.out.println("" + i + "" +numeros[i]);
       
        }
        
        int numeroBuscado = 125;
         int posicionDeElementoBuscado = existeEnArreglo(numeros, numeroBuscado);
        if (posicionDeElementoBuscado == -1) {
         System.out.println("El elemento NO existe en el arreglo");
         } else {
         System.out.println("El elemento existe en la posición: " + posicionDeElementoBuscado);
         }
        
    }
    
   }


