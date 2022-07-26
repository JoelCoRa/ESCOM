package Vista;
import javax.swing.*;
import javax.swing.border.Border;
import java.awt.*;

public class MenuPrincipal extends JFrame{
    public JButton mostrarMenu, realizarPedido, registrarRepartidor, registrarPlatillo, mostrarRepartidores;
    private JPanel panelM, panelT;
    public JLabel titulo;

    public MenuPrincipal() {
        getContentPane().setLayout(new BorderLayout());

        setTitle("Menu principal");
        setSize(800, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setVisible(false);
        setResizable(false);
        
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        
        titulo = new JLabel("Menu principal");
        titulo.setFont(new Font("Sans", Font.PLAIN,30));
        
        panelM = new JPanel();
        panelM.setLayout(new GridLayout(5, 1, 5, 1));
        
        mostrarMenu = new JButton("Mostrar menu");
        realizarPedido = new JButton("Realizar pedido");
        registrarRepartidor = new JButton("Registrar repartidor");
        registrarPlatillo = new JButton("Registrar platillo");
        mostrarRepartidores = new JButton("Mostrar repartidores");
        
        mostrarMenu.setFont(new Font("Sans", Font.PLAIN,25));
        realizarPedido.setFont(new Font("Sans", Font.PLAIN,25));
        registrarRepartidor.setFont(new Font("Sans", Font.PLAIN,25));
        registrarPlatillo.setFont(new Font("Sans", Font.PLAIN,25));
        mostrarRepartidores.setFont(new Font("Sans", Font.PLAIN,25));
        
        mostrarMenu.setPreferredSize(new Dimension(100, 50));
        realizarPedido.setPreferredSize(new Dimension(100, 50));
        registrarRepartidor.setPreferredSize(new Dimension(100, 50));
        registrarPlatillo.setPreferredSize(new Dimension(100, 50));
        mostrarRepartidores.setFont(new Font("Sans", Font.PLAIN,25));
        
        panelM.add(mostrarMenu, 0, 0);
        panelM.add(realizarPedido, 1, 0);
        panelM.add(registrarRepartidor, 2, 0);
        panelM.add(registrarPlatillo, 3, 0);
        panelM.add(mostrarRepartidores, 4, 0);
        
        panelT.add(titulo);
        
        mostrarMenu.setEnabled(false);
        mostrarRepartidores.setEnabled(false);
        realizarPedido.setEnabled(false);
        
        add(panelT, BorderLayout.NORTH);
        add(panelM, BorderLayout.CENTER);   
    }
}