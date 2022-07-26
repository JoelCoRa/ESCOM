package Controlador;

import Modelo.Restaurante;
import Modelo.Comida;
import Modelo.Bebida;
import Modelo.Postre;
import Vista.MenuPrincipal;
import Vista.RegistrarPlatillo;
import Vista.RegistrarRepartidor;
import java.awt.event.ActionEvent;

import java.awt.event.ActionListener;
import javax.swing.JOptionPane;

public class RegistrarPlatilloControlador implements ActionListener{
    private Restaurante restaurante;
    private MenuPrincipal menuPrincipal;
    private RegistrarPlatillo registrarPlatillo;
    
    public RegistrarPlatilloControlador(Restaurante restaurante, MenuPrincipal menuPrincipal, RegistrarPlatillo registrarPlatillo){
        this.restaurante = restaurante;
        this.menuPrincipal = menuPrincipal;
        this.registrarPlatillo = registrarPlatillo;
        
        this.menuPrincipal.registrarPlatillo.addActionListener(this);
        this.registrarPlatillo.bebidaButton.addActionListener(this);
        this.registrarPlatillo.comidaButton.addActionListener(this);
        this.registrarPlatillo.postreButton.addActionListener(this);
        this.registrarPlatillo.registroButton.addActionListener(this);
        this.registrarPlatillo.backButton.addActionListener(this);
    }
    
    public void registrarComida(){
        Comida comida = new Comida();
        
        try{
            if(!"".equals(registrarPlatillo.tNombre.getText()))
                comida.setNombre(registrarPlatillo.tNombre.getText());
            if(!"".equals(registrarPlatillo.tTiempoP.getText()))
                comida.setTiempoPreparacion(Integer.parseInt(registrarPlatillo.tTiempoP.getText()));
            if(!"".equals(registrarPlatillo.tPrecio.getText()))
                comida.setPrecio(Float.parseFloat(registrarPlatillo.tPrecio.getText()));
            if(!"".equals(registrarPlatillo.tIngredientes.getText()))
                comida.setIngredientes(registrarPlatillo.tIngredientes.getText());
            if(!"".equals(registrarPlatillo.tPorciones.getText()))
                comida.setPorciones(Integer.parseInt(registrarPlatillo.tPorciones.getText()));
            if(registrarPlatillo.jCBVegano.isSelected())
                comida.setVegano(registrarPlatillo.jCBVegano.isSelected());
            if(registrarPlatillo.jCBGlutenFree.isSelected())
                comida.setGlutenFree(registrarPlatillo.jCBGlutenFree.isSelected());
            if(registrarPlatillo.jCBParaAdulto.isSelected())
                comida.setParaAdulto(registrarPlatillo.jCBParaAdulto.isSelected());

            restaurante.agregarReceta(comida);

            registrarPlatillo.tNombre.setText("");
            registrarPlatillo.tTiempoP.setText("");
            registrarPlatillo.tPrecio.setText("");
            registrarPlatillo.tIngredientes.setText("");
            registrarPlatillo.tPorciones.setText("");
            registrarPlatillo.jCBVegano.setSelected(false);
            registrarPlatillo.jCBGlutenFree.setSelected(false);
            registrarPlatillo.jCBParaAdulto.setSelected(false);
            
            JOptionPane.showMessageDialog(null, "Comida registrada satisfactoriamente!");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Datos no validos!");
        }
        
        
    }
    
    public void registrarBebida(){
        Bebida bebida = new Bebida();
        
        try{
            if(!"".equals(registrarPlatillo.tNombreB.getText()))
                bebida.setNombre(registrarPlatillo.tNombreB.getText());
            if(!"".equals(registrarPlatillo.tTiempoPB.getText()))
                bebida.setTiempoPreparacion(Integer.parseInt(registrarPlatillo.tTiempoPB.getText()));
            if(!"".equals(registrarPlatillo.tPrecioB.getText()))
                bebida.setPrecio(Float.parseFloat(registrarPlatillo.tPrecioB.getText()));
            if(!"".equals(registrarPlatillo.tIngredientesB.getText()))
                bebida.setIngredientes(registrarPlatillo.tIngredientesB.getText());
            if(!"".equals(registrarPlatillo.tUnidad.getText()))
                bebida.setUnidad(registrarPlatillo.tUnidad.getText());
            if(!"".equals(registrarPlatillo.tCantidad.getText()))
                bebida.setCantidad(Float.parseFloat(registrarPlatillo.tCantidad.getText()));
            if(!"".equals(registrarPlatillo.tTipo.getText()))
                bebida.setTipo(registrarPlatillo.tTipo.getText());

            restaurante.agregarReceta(bebida);

            registrarPlatillo.tNombreB.setText("");
            registrarPlatillo.tTiempoPB.setText("");
            registrarPlatillo.tPrecioB.setText("");
            registrarPlatillo.tIngredientesB.setText("");
            registrarPlatillo.tUnidad.setText("");
            registrarPlatillo.tCantidad.setText("");
            registrarPlatillo.tTipo.setText("");
            JOptionPane.showMessageDialog(null, "Bebida registrada satisfactoriamente!");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Datos no validos!");
        }
    }
    
    public void registrarPostre(){
        Postre postre = new Postre();
        
        try{
            if(!"".equals(registrarPlatillo.tNombreP.getText()))
                postre.setNombre(registrarPlatillo.tNombreP.getText());
            if(!"".equals(registrarPlatillo.tTiempoPP.getText()))
                postre.setTiempoPreparacion(Integer.parseInt(registrarPlatillo.tTiempoPP.getText()));
            if(!"".equals(registrarPlatillo.tPrecioP.getText()))
                postre.setPrecio(Float.parseFloat(registrarPlatillo.tPrecioP.getText()));
            if(!"".equals(registrarPlatillo.tIngredientesP.getText()))
                postre.setIngredientes(registrarPlatillo.tIngredientesP.getText());
            if(!"".equals(registrarPlatillo.tPorcionesP.getText()))
                postre.setPorciones(Integer.parseInt(registrarPlatillo.tPorcionesP.getText()));
            if(!"".equals(registrarPlatillo.tNivelAmor.getText()))
                postre.setNivelDeAmor(Integer.parseInt(registrarPlatillo.tNivelAmor.getText()));
            if(!"".equals(registrarPlatillo.tNivelDulzura.getText()))
                postre.setNivelDeDulzura(Integer.parseInt(registrarPlatillo.tNivelDulzura.getText()));
            if(!"".equals(registrarPlatillo.tTipo.getText()))
                postre.setTipo(registrarPlatillo.tTipo.getText());

            restaurante.agregarReceta(postre);

            registrarPlatillo.tNombreP.setText("");
            registrarPlatillo.tTiempoPP.setText("");
            registrarPlatillo.tPrecioP.setText("");
            registrarPlatillo.tIngredientesP.setText("");
            registrarPlatillo.tPorcionesP.setText("");
            registrarPlatillo.tNivelAmor.setText("");
            registrarPlatillo.tNivelDulzura.setText("");
            registrarPlatillo.tTipo.setText("");
            JOptionPane.showMessageDialog(null, "Postre registrado satisfactoriamente!");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Datos no validos!");
        }
    }
    
    public void actionPerformed(ActionEvent evento) {
        if(menuPrincipal.registrarPlatillo == evento.getSource()){
            menuPrincipal.setVisible(false);
            registrarPlatillo.setVisible(true);
        }
        
        if(registrarPlatillo.backButton == evento.getSource()){
            menuPrincipal.setVisible(true);
            registrarPlatillo.setVisible(false);
        }
        
        if(registrarPlatillo.comidaButton == evento.getSource()){
            registrarPlatillo.card.show(registrarPlatillo.panelM_, "COMIDA");
            registrarPlatillo.panelM_.setVisible(true);
            registrarPlatillo.cambiarReceta.setText("1");
        }
        
        if(registrarPlatillo.bebidaButton == evento.getSource()){
            registrarPlatillo.card.show(registrarPlatillo.panelM_, "BEBIDA");
            registrarPlatillo.panelM_.setVisible(true);
            registrarPlatillo.cambiarReceta.setText("2");
        }
        
        if(registrarPlatillo.postreButton == evento.getSource()){
            registrarPlatillo.card.show(registrarPlatillo.panelM_, "POSTRE");
            registrarPlatillo.panelM_.setVisible(true);
            registrarPlatillo.cambiarReceta.setText("3");
        }
        
        if(registrarPlatillo.registroButton == evento.getSource()){
            switch(Integer.parseInt(registrarPlatillo.cambiarReceta.getText())){
                case 1:
                    registrarComida();
                    break;
                case 2:
                    registrarBebida();
                    break;
                case 3:
                    registrarPostre();
                    break;
            }
            RegistrarRestauranteControlador.hayPlatillo = true;
            
            menuPrincipal.mostrarMenu.setEnabled(true);
            
            if(RegistrarRestauranteControlador.hayRepartidor && RegistrarRestauranteControlador.hayPlatillo)
                    menuPrincipal.realizarPedido.setEnabled(true);
        }
    }
}
