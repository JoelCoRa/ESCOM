package Vista;
import javax.swing.*;
import java.awt.*;
import javax.swing.border.EmptyBorder;

public class RegistrarRestaurante extends JFrame{
    public JButton backtoMenuBotton, registroBotton;
    private JPanel panelRDR, panelRegistro, panelT;
    public JLabel lNombre, lDireccion, lTelefono, lTitulo;
    public JTextField tNombre, tDireccion, tTelefono;

    public RegistrarRestaurante() {
        getContentPane().setLayout(new BorderLayout());
        
        setSize(1000,600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setResizable(false);
        setLocationRelativeTo(null);
        setTitle("Registrar Datos Restaurante");
        setVisible(true);
        
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        lTitulo = new JLabel("Registrar Restaurante");
        lTitulo.setFont(new Font("Sans", Font.PLAIN,30));

        lNombre = new JLabel("Nombre: ");
        lDireccion = new JLabel("Direccion: ");
        lTelefono = new JLabel("Telefono: ");
        
        tNombre = new JTextField(30);
        tDireccion = new JTextField(30);
        tTelefono = new JTextField(30);        
        
        panelRDR = new JPanel();
        panelRDR.setLayout(new GridLayout(6, 1, 6, 1));
        
        panelRDR.add(lNombre);panelRDR.add(tNombre);
        panelRDR.add(lDireccion);panelRDR.add(tDireccion);
        panelRDR.add(lTelefono);panelRDR.add(tTelefono);
        
        add(panelRDR, BorderLayout.CENTER);
        
        //BOTON PARA REGRESAR AL MENU PRINCIPAL
        panelRegistro = new JPanel();
        panelRegistro.setLayout(new FlowLayout());

        registroBotton = new JButton("Registrar");
        registroBotton.setPreferredSize(new Dimension(150, 50));
        backtoMenuBotton = new JButton("Regresar");
        backtoMenuBotton.setPreferredSize(new Dimension(150, 50));
        
        lNombre.setFont(new Font("Sans", Font.PLAIN,30));
        lDireccion.setFont(new Font("Sans", Font.PLAIN,30));
        lTelefono.setFont(new Font("Sans", Font.PLAIN,30));
        
        registroBotton.setFont(new Font("Sans", Font.PLAIN,25));
        backtoMenuBotton.setFont(new Font("Sans", Font.PLAIN,25));
        //registroBotton.setEnabled(false);
        
        tNombre.setFont(new Font("Sans", Font.PLAIN,25));
        tDireccion.setFont(new Font("Sans", Font.PLAIN,25));
        tTelefono.setFont(new Font("Sans", Font.PLAIN,25));
        
        panelRDR.setBorder(new EmptyBorder(20, 150, 20, 150));
        panelRegistro.setBorder(new EmptyBorder(10, 10, 10, 10));
        panelT.setBorder(new EmptyBorder(10, 10, 10, 10));
        
        panelRegistro.add(registroBotton);
        panelT.add(lTitulo);
        add(panelT, BorderLayout.NORTH);
        add(panelRegistro, BorderLayout.SOUTH);
    }
}