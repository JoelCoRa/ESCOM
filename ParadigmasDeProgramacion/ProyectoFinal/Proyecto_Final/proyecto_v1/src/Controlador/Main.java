package Controlador;

import Vista.*;
import Modelo.*;
import Controlador.*;
import java.util.ArrayList;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class Main {
    public static void main(String[] args) {
        
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        }
        catch (UnsupportedLookAndFeelException e) {
        }
        catch (ClassNotFoundException e) {
        }
        catch (InstantiationException e) {
        }
        catch (IllegalAccessException e) {
        }
        
        Restaurante restaurante = new Restaurante();
        MenuPrincipal menuPrincipal = new MenuPrincipal();
        RegistrarRestaurante registrarRestaurante = new RegistrarRestaurante();
        RegistrarRestauranteControlador registrarRestauranteControlador = new RegistrarRestauranteControlador(restaurante, menuPrincipal, registrarRestaurante);
        
        RegistrarRepartidor registrarRepartidor = new RegistrarRepartidor();
        RegistrarRepartidorControlador registrarRepartidorcontrolador = new RegistrarRepartidorControlador(restaurante, menuPrincipal, registrarRepartidor);
        
        MostrarRepartidores mostrarRepartidores = new MostrarRepartidores();
        MostrarRepartidoresControlador mostrarRepartidoresControlador = new MostrarRepartidoresControlador(restaurante, menuPrincipal, mostrarRepartidores);
        
        RegistrarPlatillo registrarPlatillo = new RegistrarPlatillo();
        RegistrarPlatilloControlador registrarPlatilloControlador = new RegistrarPlatilloControlador(restaurante, menuPrincipal, registrarPlatillo);
        
        MostrarMenu mostrarMenu = new MostrarMenu();
        MostrarMenuControlador mostrarMenuControlador = new MostrarMenuControlador(restaurante, menuPrincipal, mostrarMenu);
        
        RegistrarPedido registrarPedido = new RegistrarPedido();
        RegistrarPedidoControlador registrarPedidoControlador = new RegistrarPedidoControlador(restaurante, menuPrincipal, registrarPedido);
    }
}
