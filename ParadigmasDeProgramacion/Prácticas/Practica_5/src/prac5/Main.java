/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prac5;

/**
 *
 * @author joelc
 */
public class Main {
    public static void main(String[] args){
        Cine c1= new Cine("Cine Regis","Av de la luz no. 23");
        c1.imprimirCine();        
        Pelicula pc1 = new Comedia(3,80,79.98,"Nima Nourizadeh",50.00,"Proyecto X");
        Pelicula pt1 = new Terror("Jason",89.99,"Sean S. Cunningham",60.00,"Viernes 13");
        Pelicula pa1 = new Accion(4,7,80.56,"Brian De Palma",80.00,"Scarface");
        pc1.imprimirCartelera();
        pt1.imprimirCartelera();
        pa1.imprimirCartelera();
        pc1.venderEntrada(5, "Proyecto X", 50.00);
        pt1.venderEntrada(2, "Viernes 13", 60.00);
        pa1.venderEntrada(10, "Duro de matar",80.00);
    }
}
