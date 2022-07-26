/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CentroC;

import java.util.Scanner;

/**
 *
 * @author joelc
 */
public class TiendaDepartamental {
    private String nomTienda;
    private String producto;
    private int nPisos;
    private String fechaInic;

    public TiendaDepartamental(String nomTienda, String producto, int nPisos, String fechaInic) {
        this.nomTienda = nomTienda;
        this.producto = producto;
        this.nPisos = nPisos;
        this.fechaInic = fechaInic;
    }
    public String imprimirTienda(){
        return " También cuenta con la tienda "+nomTienda+" que se especializa en "+producto;
    }
}

    

