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
public class Time {
    private int hora;
    private int minuto;
    private int segundo;

    public Time(int hora, int minuto, int segundo) {
        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    }

    public int getHora() {
        return hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public void setSegundo(int segundo) {
        this.segundo = segundo;
    }
    
    public String imprimirDuracion(){
        return "Duración: "+hora+":"+minuto+":"+segundo;
    }    
    public String imprimirHorario(){
        return "Horario: "+hora+":"+minuto;
    }
    
    
    
}
