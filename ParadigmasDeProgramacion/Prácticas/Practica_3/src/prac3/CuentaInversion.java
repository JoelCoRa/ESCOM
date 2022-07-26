
package prac3;

/**
 *
 * @author joelc
 */
public class CuentaInversion {
    //Atributos
    private String id;
    private double balance;
    private double tarifa;
    private String nombre;
       
    //Método Constructor
    public CuentaInversion(String id, double balance, double tarifa, String nombre) {
        this.id = id;
        this.balance = balance;
        this.tarifa = tarifa;
        this.nombre = nombre;
    }
    //Método calcularIntereses
    public double calcularIntereses(){
        double interes;
        interes = balance * tarifa;
        balance += interes;
        return interes;
    }
    //Método obtenerBalance
    public double obtenerBalance(){
        return balance;
    }
    //Método deposito
    public void deposito(double dep){
        double ingreso;
        ingreso = dep + balance;
        System.out.print("Su depósito de "+ dep + " pesos, ha sido confirmado.");
        System.out.println("Su saldo actual es de "+ ingreso + " pesos.");
    }
    //Método retiro
    public boolean retiro(double ret){
        //Si el retiro es menor que el total del balance
        if (ret <= balance){
            balance -= ret;
            System.out.println("Su retiro ha sido exitoso.");
            System.out.println("Su saldo actual es de "+ balance +" pesos.");
            return true;
        }
        //Si el retiro es mayor que el total del balance
        else{
            System.out.println("Saldo insuficiente.");
            return false;
        }
    }
    
    
   
}
