/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tarea6;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

/**
 *
 * @author joelc
 */
public class Tarea6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int contador = 0, i;
        ArrayList<Integer> may = (ArrayList<Integer>) Arrays.asList(12,4,56,1,3,9,10,44,2,8).stream(). filter(x->x > 7). collect(Collectors.toCollection(()-> new ArrayList<Integer>()));
        may.forEach(e-> System.out.println(e));
        /*for(Integer numero: Arrays.asList(1,2,3,4,5,6,7,8,9)){
            if(numero > 7){
                contador++;
            }
            System.out.println(numero +"");
            
        }*/
    }
    
}
