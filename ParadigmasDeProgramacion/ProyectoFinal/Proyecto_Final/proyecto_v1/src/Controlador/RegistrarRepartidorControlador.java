package Controlador;

import Modelo.Repartidor;
import Modelo.Restaurante;
import Vista.MenuPrincipal;
import Vista.RegistrarRepartidor;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;

public class RegistrarRepartidorControlador implements ActionListener{
    private Restaurante restaurante;
    private Repartidor repartidor;
    private MenuPrincipal menuPrincipal;
    private RegistrarRepartidor registrarRepartidor;
    
    public RegistrarRepartidorControlador(Restaurante restaurante, MenuPrincipal menuPrincipal, RegistrarRepartidor registrarRepartidor){
        this.restaurante = restaurante;
        this.menuPrincipal = menuPrincipal;
        this.registrarRepartidor = registrarRepartidor;
        
        this.menuPrincipal.registrarRepartidor.addActionListener(this);
        this.registrarRepartidor.registroBotton.addActionListener(this);
        this.registrarRepartidor.backtoMenuBotton.addActionListener(this);
    }
    
    public void actionPerformed(ActionEvent evento){
        if(menuPrincipal.registrarRepartidor == evento.getSource()){
            menuPrincipal.setVisible(false);
            registrarRepartidor.setVisible(true);
        }
        
        if(registrarRepartidor.backtoMenuBotton == evento.getSource()){
            menuPrincipal.setVisible(true);
            registrarRepartidor.setVisible(false);
        }
        
        if(registrarRepartidor.registroBotton == evento.getSource()){
            repartidor = new Repartidor();
            
            try{
                if(!"".equals(registrarRepartidor.tNombre.getText()))
                    repartidor.setNombre(registrarRepartidor.tNombre.getText());
                if(!"".equals(registrarRepartidor.tTelefono.getText()))
                    repartidor.setNumTelefono(Long.parseLong(registrarRepartidor.tTelefono.getText()));
                if(!"".equals(registrarRepartidor.tEdad.getText()))
                    repartidor.setEdad(Integer.parseInt(registrarRepartidor.tEdad.getText()));
                if(!"".equals(registrarRepartidor.tGenero.getText()))
                    repartidor.setGenero(registrarRepartidor.tGenero.getText().charAt(0));
                if(!"".equals(registrarRepartidor.tSalario.getText()))
                    repartidor.setSalario(Float.parseFloat(registrarRepartidor.tSalario.getText()));
                if(!"".equals(registrarRepartidor.tTransporte.getText()))
                    repartidor.setTransporte(registrarRepartidor.tTransporte.getText());

                restaurante.agregarRepartidor(repartidor);
                
                RegistrarRestauranteControlador.hayRepartidor = true;
                
                menuPrincipal.mostrarRepartidores.setEnabled(true);
                
                if(RegistrarRestauranteControlador.hayRepartidor && RegistrarRestauranteControlador.hayPlatillo)
                    menuPrincipal.realizarPedido.setEnabled(true);

                registrarRepartidor.tNombre.setText("");
                registrarRepartidor.tTelefono.setText("");
                registrarRepartidor.tEdad.setText("");
                registrarRepartidor.tGenero.setText("");
                registrarRepartidor.tSalario.setText("");
                registrarRepartidor.tTransporte.setText("");
                
                JOptionPane.showMessageDialog(null, "Repartidor registrado satisfactoriamente!");
                
                registrarRepartidor.setVisible(false);
                menuPrincipal.setVisible(true);
                
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, "Datos no validos!");
            }
        }
    }
}
