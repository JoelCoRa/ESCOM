package Controlador;

import Modelo.Restaurante;
import Vista.MenuPrincipal;
import Vista.MostrarMenu;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTable;

public class MostrarMenuControlador implements ActionListener{
    private static int platilloAnt = 0;
    private Restaurante restaurante;
    private MenuPrincipal menuPrincipal;
    private MostrarMenu mostrarMenu;
    
    public MostrarMenuControlador(Restaurante restaurante, MenuPrincipal menuPrincipal, MostrarMenu mostrarMenu){
        this.restaurante = restaurante;
        this.menuPrincipal = menuPrincipal;
        this.mostrarMenu = mostrarMenu;
        
        this.menuPrincipal.mostrarMenu.addActionListener(this);
        this.mostrarMenu.backtoMenuBotton.addActionListener(this);
    }
    
    public void actionPerformed(ActionEvent evento){
        if(mostrarMenu.backtoMenuBotton == evento.getSource()){
                mostrarMenu.setVisible(false);
                menuPrincipal.setVisible(true);
        }
        
        if(menuPrincipal.mostrarMenu == evento.getSource()){
            
            for ( ; platilloAnt < restaurante.getRecetas().size(); platilloAnt++){
                
                mostrarMenu.panelPla = new JPanel();
                mostrarMenu.panelPla.setLayout(new GridLayout(1, 4));
                
                mostrarMenu.panelPla.add(new JLabel(Integer.toString(restaurante.getRecetas().get(platilloAnt).getId()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarMenu.panelPla.add(new JLabel(restaurante.getRecetas().get(platilloAnt).getNombre())).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarMenu.panelPla.add(new JLabel(Float.toString(restaurante.getRecetas().get(platilloAnt).getPrecio()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarMenu.panelPla.add(new JLabel(Integer.toString(restaurante.getRecetas().get(platilloAnt).getTiempoPreparacion()))).setFont(new Font("Sans", Font.PLAIN,15));
                
                mostrarMenu.panelPlatillo.add(mostrarMenu.panelPla);
            }
            
            menuPrincipal.setVisible(false);
            mostrarMenu.setVisible(true);
        }
    }
}
