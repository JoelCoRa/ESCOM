package Controlador;

import Modelo.Restaurante;
import Vista.MenuPrincipal;
import Vista.MostrarRepartidores;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTable;

public class MostrarRepartidoresControlador implements ActionListener{
    private Restaurante restaurante;
    private MenuPrincipal menuPrincipal;
    private MostrarRepartidores mostrarRepartidores;
    
    public MostrarRepartidoresControlador(Restaurante restaurante, MenuPrincipal menuPrincipal, MostrarRepartidores mostrarRepartidores){
        this.restaurante = restaurante;
        this.menuPrincipal = menuPrincipal;
        this.mostrarRepartidores = mostrarRepartidores;
        
        this.menuPrincipal.mostrarRepartidores.addActionListener(this);
        this.mostrarRepartidores.backtoMenuBotton.addActionListener(this);
    }
    
    public void actionPerformed(ActionEvent evento){
        if(mostrarRepartidores.backtoMenuBotton == evento.getSource()){
                mostrarRepartidores.setVisible(false);
                menuPrincipal.setVisible(true);
                
                Component[] components = mostrarRepartidores.panelRepartidor.getComponents();

                for (Component component : components) {
                    mostrarRepartidores.panelRepartidor.remove(component);  
                }
                mostrarRepartidores.panelRepartidor.revalidate();
        }
        
        if(menuPrincipal.mostrarRepartidores == evento.getSource()){
            
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lId);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lNombre);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lEdad);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lGenero);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lSalario);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lTransporte);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lScore);
            mostrarRepartidores.panelCol.add(mostrarRepartidores.lOcupado);
            mostrarRepartidores.panelRepartidor.add(mostrarRepartidores.panelCol);
            
            for (int i = 0; i < restaurante.getRepartidores().size(); i++){
                
                mostrarRepartidores.panelRep = new JPanel();
                mostrarRepartidores.panelRep.setLayout(new GridLayout(1, 8));
                
                mostrarRepartidores.panelRep.add(new JLabel(Integer.toString(restaurante.getRepartidores().get(i).getId()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(restaurante.getRepartidores().get(i).getNombre())).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(Integer.toString(restaurante.getRepartidores().get(i).getEdad()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(Character.toString(restaurante.getRepartidores().get(i).getGenero()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(Float.toString(restaurante.getRepartidores().get(i).getSalario()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(restaurante.getRepartidores().get(i).getTransporte())).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(Float.toString(restaurante.getRepartidores().get(i).getScore()))).setFont(new Font("Sans", Font.PLAIN,15));
                mostrarRepartidores.panelRep.add(new JLabel(Boolean.toString(restaurante.getRepartidores().get(i).estaOcupado()))).setFont(new Font("Sans", Font.PLAIN,15));
                
                mostrarRepartidores.panelRepartidor.add(mostrarRepartidores.panelRep);
            }
            
            menuPrincipal.setVisible(false);
            mostrarRepartidores.setVisible(true);
        }
    }
}
