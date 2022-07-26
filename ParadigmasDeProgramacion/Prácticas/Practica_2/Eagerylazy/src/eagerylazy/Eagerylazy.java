/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eagerylazy;

/**
 *
 * @author itzel
 */
public class Eagerylazy {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       //eager
       System.out.println("eager");
       int x=3*3;
       /* y=1/0;
        prim(x,y) = x;
       prim(cuad 3, 1/0)
       prim(3*3,indeterminado)
       prim(9,indeterminado)
       9*/
       System.out.println("" + x);
       
       
        System.out.println("Lazy");
        /*prim(cuad 3,1/0)
        (cuad 3)
        3*3
        9
        */
        System.out.println("" + x);

    }
    
}
