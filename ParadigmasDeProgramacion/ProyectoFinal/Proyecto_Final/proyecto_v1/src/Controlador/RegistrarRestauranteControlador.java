package Controlador;

import Modelo.Restaurante;
import Vista.MenuPrincipal;
import Vista.RegistrarRestaurante;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class RegistrarRestauranteControlador implements ActionListener {
    public static boolean hayRepartidor;
    public static boolean hayPlatillo;
    private Restaurante restaurante;
    private MenuPrincipal menuPrincipal;
    private RegistrarRestaurante registrarRestaurante;

    public RegistrarRestauranteControlador(Restaurante restaurante, MenuPrincipal menuPrincipal, RegistrarRestaurante registrarRestaurante){
        this.restaurante = restaurante;
        this.menuPrincipal = menuPrincipal;
        this.registrarRestaurante = registrarRestaurante;
        this.registrarRestaurante.registroBotton.addActionListener(this);
    }
    
    public void actionPerformed(ActionEvent evento){
        if(registrarRestaurante.registroBotton == evento.getSource()){
            try{
                if(!"".equals(registrarRestaurante.tNombre.getText()) && !"".equals(registrarRestaurante.tDireccion.getText()) && !"".equals(registrarRestaurante.tTelefono.getText())){
                    restaurante.setNombre(registrarRestaurante.tNombre.getText());
                    restaurante.setDireccion(registrarRestaurante.tDireccion.getText());
                    restaurante.setTelefono(Long.parseLong(registrarRestaurante.tTelefono.getText()));
                    JOptionPane.showMessageDialog(null, "Restaurante registrado satisfactoriamente!");
                    registrarRestaurante.setVisible(false);
                    menuPrincipal.setVisible(true);
                }
                else{
                    JOptionPane.showMessageDialog(null, "Ingresa datos");
                }
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, "Datos no validos!");
            }
        }
    }
}