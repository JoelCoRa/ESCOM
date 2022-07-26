package Vista;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class RegistrarPedido extends JFrame{
    public JScrollPane sPanelPlatillos;
    public JPanel panelPlatillos;
    
    public JPanel panelIBotones[], panelRegistroP;
    public JButton backtoMenuBotton, registrarPedido;
    public JLabel lplatillos[];
    
    public JLabel titulo;
    private JPanel panelT; 
    
    public JPanel panelM, panelCliente, panelAgregar, panelEscoger;
    
    //REGISTRO DE CLIENTE
    public JLabel lNombreC, lTelefonoC, lDireccionC, lMetodoP;
    public JTextField tNombreC, tTelefonoC, tDireccionC, tMetodoP;
    
    //AGREGAR PLATILLO
    public JPanel panelBotonAgregar, panelTextoAgregar, panelTituloAgregar; 
    public JLabel ltitutloAgregar;
    public JTextField tAgregarP;
    public JButton agregarPlatilloButton;
    
    public RegistrarPedido(){
        getContentPane().setLayout(new BorderLayout());
        
        setSize(1000,800);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocation(400,200);
        setResizable(false);
        setTitle("Registrar Pedido");
        setVisible(false);
        
        titulo = new JLabel("Registrar pedido");
        titulo.setFont(new Font("Sans", Font.PLAIN,30));
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        panelT.add(titulo);
        
        backtoMenuBotton = new JButton("Regresar");
        registrarPedido = new JButton("Realizar pedido");
        
        backtoMenuBotton.setFont(new Font("Sans", Font.PLAIN,25));
        registrarPedido.setFont(new Font("Sans", Font.PLAIN,25));
        
        backtoMenuBotton.setPreferredSize(new Dimension(150, 50));
        registrarPedido.setPreferredSize(new Dimension(150, 50));
        
        panelRegistroP = new JPanel();
        panelRegistroP.setLayout(new FlowLayout());
        
        panelPlatillos = new JPanel();
        panelPlatillos.setLayout(new BoxLayout(panelPlatillos, BoxLayout.PAGE_AXIS));
        
        sPanelPlatillos = new JScrollPane(panelPlatillos);
        sPanelPlatillos.setBorder(new EmptyBorder(50, 150, 0, 50));
        
        panelEscoger = new JPanel();
        panelEscoger.setLayout(new BorderLayout());
        panelEscoger.setBorder(new EmptyBorder(0, 0, 0, 70));
        
        // Escoger - Agregar platillo
        
        ltitutloAgregar = new JLabel("Agregar platillo");
        ltitutloAgregar.setFont(new Font("Sans", Font.PLAIN,18));
        
        tAgregarP = new JTextField(5);
        tAgregarP.setFont(new Font("Sans", Font.PLAIN,20));
        
        agregarPlatilloButton = new JButton("Agregar");
        agregarPlatilloButton.setFont(new Font("Sans", Font.PLAIN,20));
        
        panelTituloAgregar = new JPanel();
        panelTituloAgregar.setLayout(new GridLayout(1,0));
        panelTituloAgregar.add(ltitutloAgregar);
        panelTituloAgregar.setBorder(new EmptyBorder(110, 130, 0, 0));
        
        panelBotonAgregar = new JPanel();
        panelBotonAgregar.setLayout(new GridLayout(1,0));
        panelBotonAgregar.add(agregarPlatilloButton);
        panelBotonAgregar.setBorder(new EmptyBorder(0, 70, 50, 70));
        
        panelTextoAgregar = new JPanel();
        panelTextoAgregar.setLayout(new GridLayout(1,0));
        panelTextoAgregar.add(tAgregarP);
        panelTextoAgregar.setBorder(new EmptyBorder(30, 70, 20, 70));
        
        panelRegistroP.setBorder(new EmptyBorder(0, 0, 30, 0));
        
        panelEscoger.add(panelTituloAgregar, BorderLayout.NORTH);
        panelEscoger.add(panelTextoAgregar, BorderLayout.CENTER);
        panelEscoger.add(panelBotonAgregar, BorderLayout.SOUTH);
        //
        
        panelM = new JPanel();
        panelM.setLayout(new GridLayout(2, 1, 2, 1));
        
        panelCliente = new JPanel();
        panelCliente.setLayout(new GridLayout(8, 1, 8, 1));
        
        panelCliente.setBorder(new EmptyBorder(0, 150, 0, 150));
        
        // DATOS CLIENTE
        
        lNombreC = new JLabel("Nombre: ");
        lTelefonoC = new JLabel("No.Telefono: ");
        lDireccionC = new JLabel("Direccion: ");
        lMetodoP = new JLabel("Metodo de pago");
        
        tNombreC = new JTextField(30);
        tTelefonoC = new JTextField(30);
        tDireccionC = new JTextField(30);
        tMetodoP = new JTextField(30);
        
        panelCliente.add(lNombreC);panelCliente.add(tNombreC);
        panelCliente.add(lTelefonoC);panelCliente.add(tTelefonoC);
        panelCliente.add(lDireccionC);panelCliente.add(tDireccionC);
        panelCliente.add(lMetodoP);panelCliente.add(tMetodoP);
        
        lNombreC.setFont(new Font("Sans", Font.PLAIN,30));
        lTelefonoC.setFont(new Font("Sans", Font.PLAIN,30));
        lDireccionC.setFont(new Font("Sans", Font.PLAIN,30));
        lMetodoP.setFont(new Font("Sans", Font.PLAIN,30));
        
        tNombreC.setFont(new Font("Sans", Font.PLAIN,25));
        tTelefonoC.setFont(new Font("Sans", Font.PLAIN,25));
        tDireccionC.setFont(new Font("Sans", Font.PLAIN,25));
        tMetodoP.setFont(new Font("Sans", Font.PLAIN,25));
        
        // 
        
        panelAgregar = new JPanel();
        panelAgregar.setLayout(new GridLayout(1, 2, 1, 2));
        panelAgregar.setBorder(new EmptyBorder(0, 0, 0, 65));
        
        panelAgregar.add(sPanelPlatillos);
        panelAgregar.add(panelEscoger);
        
        panelM.add(panelCliente);
        panelM.add(panelAgregar);
        
        //sPanelPlatillos.add(panelPlatillos);
        panelRegistroP.add(registrarPedido);
        panelRegistroP.add(backtoMenuBotton);
        add(panelT, BorderLayout.NORTH);
        add(panelM, BorderLayout.CENTER);
        add(panelRegistroP, BorderLayout.SOUTH);
    }
}
