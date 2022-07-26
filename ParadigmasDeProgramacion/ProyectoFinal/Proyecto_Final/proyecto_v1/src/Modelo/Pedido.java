package Modelo;
import java.util.ArrayList;

public class Pedido {
    private static int IDP = 1;
    private int id;
    private Cliente cliente;
    private Repartidor repartidor;
    private ArrayList<Receta> platillos;
    private ArrayList<Integer> cantidades;
    private float costoTotal;
    private String direccion;
    private int tiempoLlegada;
    private String metodoPago;
    
    public Pedido(){
        id = IDP;
        IDP++;
        this.platillos = new ArrayList<>();
        this.cantidades = new ArrayList<>();
    }

    public Pedido(int id, Cliente cliente, Repartidor repartidor, ArrayList<Receta> platillos, ArrayList<Integer> cantidades, float costoTotal, String direccion, int tiempoLlegada, String metodoPago) {
        this.id = id;
        this.cliente = cliente;
        this.repartidor = repartidor;
        this.platillos = platillos;
        this.cantidades = cantidades;
        this.costoTotal = costoTotal;
        this.direccion = direccion;
        this.tiempoLlegada = tiempoLlegada;
        this.metodoPago = metodoPago;
    }
    
    public void agregarReceta(Receta receta){
        if(!hayPlatillo(receta)){
            this.platillos.add(receta);
            this.cantidades.add(1);
        }
    }

    public int getId() {return id;}
    public ArrayList<Integer> getCantidades() {return cantidades;}
    public Cliente getCliente() {return cliente;}
    public Repartidor getRepartidor() {return repartidor;}
    public ArrayList<Receta> getPlatillos() {return platillos;}
    public float getCostoTotal() {return costoTotal;}
    public String getDireccion() {return direccion;}
    public int getTiempoLlegada() {return tiempoLlegada;}
    public String getMetodoPago() {return metodoPago;}

    public void setCantidades(ArrayList<Integer> cantidades) {this.cantidades = cantidades;}
    public void setCliente(Cliente cliente) {this.cliente = cliente;}
    public void setRepartidor(Repartidor repartidor) {this.repartidor = repartidor;}
    public void setPlatillos(ArrayList<Receta> platillos) {this.platillos = platillos;}
    public void setCostoTotal(float costoTotal) {this.costoTotal = costoTotal;}
    public void setDireccion(String direccion) {this.direccion = direccion;}
    public void setTiempoLlegada(int tiempoLlegada) {this.tiempoLlegada = tiempoLlegada;}
    public void setMetodoPago(String metodoPago) {this.metodoPago = metodoPago;}
    
    public boolean asignarRepartidor(Restaurante restaurante){
        for(int i = 0; i < restaurante.getRepartidores().size(); i++){
            if(!restaurante.getRepartidores().get(i).estaOcupado()){
                this.repartidor = restaurante.getRepartidores().get(i);
                this.repartidor.setOcupado(true);
                return true;
            }
        }
        return false;
    }
    
    public boolean hayPlatillo(Receta receta){
        if(!platillos.isEmpty()){
            for(int i = 0; i < platillos.size(); i++){
                if(platillos.get(i).getId() == receta.getId()){
                    cantidades.set(i, cantidades.get(i)+1);
                    return true;
                }
            }
        }
        return false;
    }
    
    public void calcularCostoT(){
        for(int i = 0; i < platillos.size(); i++)
            this.costoTotal += platillos.get(i).getPrecio();
    }
    
    public void calculartiempoLlegada(){
        this.tiempoLlegada = 0;
        for(int i = 0; i < platillos.size(); i++){
            if(this.tiempoLlegada < platillos.get(i).getTiempoPreparacion())
                this.tiempoLlegada = platillos.get(i).getTiempoPreparacion();
        }
    }
    
    public String generarRecibo(){
        String mensaje = "\nDireccion de envio:\n" + direccion + "\n\n" + "Pedido: " + "\n";
        for(int i = 0; i < this.platillos.size(); i++){
            mensaje += this.cantidades.get(i)  + "--";
            mensaje += this.platillos.get(i).getNombre() + "--";
            mensaje += this.platillos.get(i).getPrecio() + "\n";
        }
        
        mensaje += "\nCosto total: " + this.costoTotal;
        mensaje += "\nTiempo de llegada: " + this.tiempoLlegada;
        mensaje += "\nRepartidor: " + this.repartidor.getNombre();
        
        return mensaje;
    }
}