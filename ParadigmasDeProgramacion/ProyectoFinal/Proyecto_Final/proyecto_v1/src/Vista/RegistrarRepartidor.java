package Vista;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class RegistrarRepartidor extends JFrame{
    
    public JButton backtoMenuBotton, registroBotton;
    private JPanel panelRDR, panelRegistro;
    public JLabel lNombre, lTelefono, lEdad, lGenero, lSalario, lTransporte;
    public JTextField tNombre, tTelefono, tEdad, tGenero, tSalario, tTransporte;
    
    public JLabel titulo;
    private JPanel panelT; 
     
    public RegistrarRepartidor(){
        getContentPane().setLayout(new BorderLayout());
        
        setSize(1000,600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocation(400,200);
        setResizable(false);
        setTitle("Registrar Datos Repartidor");
        setVisible(false);
        
        titulo = new JLabel("Registrar Repartidor");
        titulo.setFont(new Font("Sans", Font.PLAIN,30));
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        panelT.add(titulo);

        lNombre = new JLabel("Nombre: ");
        lTelefono = new JLabel("Telefono: ");
        lEdad = new JLabel("Edad: ");
        lGenero = new JLabel("Genero: ");
        lSalario = new JLabel("Salario: ");
        lTransporte = new JLabel("Transporte: ");
        
        tNombre = new JTextField(50);
        tTelefono = new JTextField(50);
        tEdad = new JTextField(50);
        tGenero = new JTextField(50);
        tSalario = new JTextField(50);
        tTransporte = new JTextField(50);
        
        panelRDR = new JPanel();
        panelRDR.setLayout(new GridLayout(8, 1, 8, 1));
        
        panelRDR.add(lNombre);panelRDR.add(tNombre);
        panelRDR.add(lTelefono);panelRDR.add(tTelefono);
        panelRDR.add(lEdad);panelRDR.add(tEdad);
        panelRDR.add(lGenero);panelRDR.add(tGenero);
        panelRDR.add(lSalario);panelRDR.add(tSalario);
        panelRDR.add(lTransporte);panelRDR.add(tTransporte);
        
        panelRDR.setBorder(new EmptyBorder(50, 150, 0, 150));
        
        //BOTON PARA REGRESAR AL MENU PRINCIPAL
        panelRegistro = new JPanel();
        panelRegistro.setLayout(new FlowLayout());
        panelRegistro.setBorder(new EmptyBorder(0, 0, 20, 0));

        registroBotton = new JButton("Registrar");
        registroBotton.setPreferredSize(new Dimension(150, 50));
        backtoMenuBotton = new JButton("Regresar");
        backtoMenuBotton.setPreferredSize(new Dimension(150, 50));
        
        lNombre.setFont(new Font("Sans", Font.PLAIN,30));
        lTelefono.setFont(new Font("Sans", Font.PLAIN,30));
        lEdad.setFont(new Font("Sans", Font.PLAIN,30));
        lGenero.setFont(new Font("Sans", Font.PLAIN,30));
        lSalario.setFont(new Font("Sans", Font.PLAIN,30));
        lTransporte.setFont(new Font("Sans", Font.PLAIN,30));
        
        registroBotton.setFont(new Font("Sans", Font.PLAIN,25));
        backtoMenuBotton.setFont(new Font("Sans", Font.PLAIN,25));
        
        tNombre.setFont(new Font("Sans", Font.PLAIN,25));
        tTelefono.setFont(new Font("Sans", Font.PLAIN,25));
        tEdad.setFont(new Font("Sans", Font.PLAIN,25));
        tGenero.setFont(new Font("Sans", Font.PLAIN,25));
        tSalario.setFont(new Font("Sans", Font.PLAIN,25));
        tTransporte.setFont(new Font("Sans", Font.PLAIN,25));
        
        panelRegistro.add(registroBotton);
        panelRegistro.add(backtoMenuBotton);
        add(panelT, BorderLayout.NORTH);
        add(panelRDR, BorderLayout.CENTER);
        add(panelRegistro, BorderLayout.SOUTH);
    }
}
