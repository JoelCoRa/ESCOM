package Controlador;

import Modelo.Cliente;
import Modelo.Pedido;
import Modelo.Restaurante;
import Vista.MenuPrincipal;
import Vista.RegistrarPedido;
import java.awt.Component;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class RegistrarPedidoControlador implements ActionListener{
    Pedido pedido;
    Restaurante restaurante;
    MenuPrincipal menuPrincipal;
    RegistrarPedido registrarPedido;
    Cliente cliente;
    int tamano;
    static int tamanoAnt = 0;
    
    public RegistrarPedidoControlador(Restaurante restaurante, MenuPrincipal menuPrincipal, RegistrarPedido registrarPedido){
        this.restaurante = restaurante;
        this.menuPrincipal = menuPrincipal;
        this.registrarPedido = registrarPedido;
        
        this.menuPrincipal.realizarPedido.addActionListener(this);
        this.registrarPedido.backtoMenuBotton.addActionListener(this);
        this.registrarPedido.agregarPlatilloButton.addActionListener(this);
        this.registrarPedido.registrarPedido.addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent evento) {
        if(menuPrincipal.realizarPedido == evento.getSource()){
            pedido = new Pedido();
            
            tamano = restaurante.getRecetas().size();
            registrarPedido.lplatillos = new JLabel[tamano];
            registrarPedido.panelIBotones = new JPanel[tamano];
            
            for( ; tamanoAnt < tamano; tamanoAnt++){
                registrarPedido.lplatillos[tamanoAnt] = new JLabel();
                registrarPedido.lplatillos[tamanoAnt].setFont(new Font("Sans", Font.PLAIN,30));
                registrarPedido.lplatillos[tamanoAnt].setText((" " + restaurante.getRecetas().get(tamanoAnt).getId() + ". " + restaurante.getRecetas().get(tamanoAnt).getNombre()));
                registrarPedido.panelPlatillos.add(registrarPedido.lplatillos[tamanoAnt], Component.LEFT_ALIGNMENT);
            }
            menuPrincipal.setVisible(false);
            registrarPedido.setVisible(true);
        }
        
        if(registrarPedido.backtoMenuBotton == evento.getSource()){
            menuPrincipal.setVisible(true);
            registrarPedido.setVisible(false);
        }
        
        if(registrarPedido.agregarPlatilloButton == evento.getSource()){
            try{
                int idReceta = Integer.parseInt(registrarPedido.tAgregarP.getText());
                pedido.agregarReceta(restaurante.getRecetas().get(idReceta-1));
                registrarPedido.tAgregarP.setText("");
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, "Datos no validos!");
            }
        }
        
        if(registrarPedido.registrarPedido == evento.getSource()){
            String mensaje;
            cliente = new Cliente();
            try{
                cliente.setNombre(registrarPedido.tNombreC.getText());
                cliente.setDireccion(registrarPedido.tDireccionC.getText());
                cliente.setNumTelefono(Long.parseLong(registrarPedido.tTelefonoC.getText()));

                pedido.setDireccion(registrarPedido.tDireccionC.getText());
                pedido.setMetodoPago(registrarPedido.tMetodoP.getText());
                
                if(pedido.asignarRepartidor(restaurante)){
                    pedido.calculartiempoLlegada();
                    pedido.getRepartidor().sumarScore();
                    pedido.calcularCostoT();
                    
                    mensaje = restaurante.getNombre() + "\n" + "A nombre de: " + cliente.getNombre();

                    restaurante.agregarPedido(pedido);

                    JOptionPane.showMessageDialog(null, mensaje + pedido.generarRecibo());

                    menuPrincipal.setVisible(true);
                    registrarPedido.setVisible(false);
                }
                else{
                    JOptionPane.showMessageDialog(null, "No hay repartidores disponibles!");
                }
                
                registrarPedido.tAgregarP.setText("");
                registrarPedido.tDireccionC.setText("");
                registrarPedido.tMetodoP.setText("");
                registrarPedido.tNombreC.setText("");
                registrarPedido.tTelefonoC.setText("");
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, "Datos no validos!");
            }
        }
    }
}