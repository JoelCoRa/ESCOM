package Vista;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class RegistrarPlatillo extends JFrame{
    
    public JPanel panelRegistro, panelBotones, panelComida, panelBebida, panelPostre;
    public JButton comidaButton, bebidaButton, postreButton;
    public JButton backButton, registroButton;
    public JTextField cambiarReceta;
    
    public JLabel lNombre, lTiempoP, lPrecio, lIngredientes, lPorciones, lVegano, lGlutenFree, lParaAdulto;
    public JTextField tNombre, tTiempoP, tPrecio, tIngredientes, tPorciones;
    public JPanel panelRPC, panelRPB, panelRPP, panelM_;
    public CardLayout card;
    
    public JCheckBox jCBVegano, jCBGlutenFree, jCBParaAdulto;
    
    public JLabel lUnidad, lCantidad, lTipo;
    public JTextField tNombreB, tTiempoPB, tPrecioB, tIngredientesB, tUnidad, tCantidad, tTipo;
    
    public JLabel lNivelAmor, lNivelDulzura;
    public JTextField tNombreP, tTiempoPP, tPrecioP, tIngredientesP, tPorcionesP, tNivelAmor, tNivelDulzura;
    
    public JLabel titulo;
    private JPanel panelT;
    
    public JPanel panelTituloBotones;
    
    public RegistrarPlatillo(){
        getContentPane().setLayout(new BorderLayout());
        
        setSize(1000,600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocation(400,200);
        setResizable(false);
        setTitle("Registrar platillo");
        setVisible(false);
        
        titulo = new JLabel("Registrar Platillo");
        titulo.setFont(new Font("Sans", Font.PLAIN,30));
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        panelT.add(titulo);
        
        cambiarReceta = new JTextField("");
        cambiarReceta.setVisible(false);
        
        comidaButton = new JButton("Comida");
        bebidaButton = new JButton("Bebida");
        postreButton = new JButton("Postre");
        registroButton = new JButton("Registrar");
        backButton = new JButton("Regresar");
        
        card = new CardLayout();
        //panelM.setLayout(new CardLayout());
        panelM_ = new JPanel();
        panelM_.setLayout(card);
        panelBotones = new JPanel();
        panelBotones.setLayout(new FlowLayout());
        panelRegistro = new JPanel();
        panelRegistro.setLayout(new FlowLayout());
        
        comidaButton.setPreferredSize(new Dimension(150, 50));
        comidaButton.setFont(new Font("Sans", Font.PLAIN,25));
        bebidaButton.setPreferredSize(new Dimension(150, 50));
        bebidaButton.setFont(new Font("Sans", Font.PLAIN,25));
        postreButton.setPreferredSize(new Dimension(150, 50));
        postreButton.setFont(new Font("Sans", Font.PLAIN,25));
        backButton.setPreferredSize(new Dimension(150, 50));
        backButton.setFont(new Font("Sans", Font.PLAIN,25));
        registroButton.setPreferredSize(new Dimension(150, 50));
        registroButton.setFont(new Font("Sans", Font.PLAIN,25));
        
        panelBotones.add(comidaButton);
        panelBotones.add(bebidaButton);
        panelBotones.add(postreButton);
        panelRegistro.add(cambiarReceta);
        panelRegistro.add(registroButton);
        panelRegistro.add(backButton);
        
        panelTituloBotones = new JPanel();
        panelTituloBotones.setLayout(new GridLayout(2,1,2,1));
        panelTituloBotones.add(panelT);
        panelTituloBotones.add(panelBotones);
        
        Comida();
        Bebida();
        Postre();
        
        add(panelM_, BorderLayout.CENTER);
        add(panelTituloBotones, BorderLayout.NORTH);
        add(panelRegistro, BorderLayout.SOUTH);
        panelM_.setVisible(false);
    }
    
    public void Comida(){
        
        lNombre = new JLabel("Nombre: ");
        lTiempoP = new JLabel("Tiempo de preparacion: ");
        lPrecio = new JLabel("Precio: ");
        lIngredientes = new JLabel("Ingredientes: ");
        lPorciones = new JLabel("Porciones: ");
        lVegano = new JLabel("Vegano: ");
        lGlutenFree = new JLabel("Gluten free: ");
        lParaAdulto = new JLabel("Para adulto: ");
        
        lNombre.setFont(new Font("Sans", Font.PLAIN,20));
        lTiempoP.setFont(new Font("Sans", Font.PLAIN,20));
        lPrecio.setFont(new Font("Sans", Font.PLAIN,20));
        lIngredientes.setFont(new Font("Sans", Font.PLAIN,20));
        lPorciones.setFont(new Font("Sans", Font.PLAIN,20));
        lVegano.setFont(new Font("Sans", Font.PLAIN,20));
        lGlutenFree.setFont(new Font("Sans", Font.PLAIN,20));
        lParaAdulto.setFont(new Font("Sans", Font.PLAIN,20));
                
        tNombre = new JTextField(30);
        tTiempoP = new JTextField(30);
        tPrecio = new JTextField(30);
        tIngredientes = new JTextField(30);
        tPorciones = new JTextField(30);
        
        jCBVegano = new JCheckBox();
        jCBGlutenFree = new JCheckBox();
        jCBParaAdulto = new JCheckBox();
        
        panelRPC = new JPanel();
        panelRPC.setVisible(false);
        panelRPC.setLayout(new GridLayout(8, 1, 8, 1));
        
        panelRPC.add(lNombre);panelRPC.add(tNombre);
        panelRPC.add(lTiempoP);panelRPC.add(tTiempoP);
        panelRPC.add(lPrecio);panelRPC.add(tPrecio);
        panelRPC.add(lIngredientes);panelRPC.add(tIngredientes);
        panelRPC.add(lPorciones);panelRPC.add(tPorciones);
        panelRPC.add(lVegano);panelRPC.add(jCBVegano);
        panelRPC.add(lGlutenFree);panelRPC.add(jCBGlutenFree);
        panelRPC.add(lParaAdulto);panelRPC.add(jCBParaAdulto);
        
        panelRPC.setBorder(new EmptyBorder(50, 100, 50, 100));
        
        panelM_.add(panelRPC, "COMIDA");
    }
    
    public void Bebida(){
        
        lNombre = new JLabel("Nombre: ");
        lTiempoP = new JLabel("Tiempo de preparacion: ");
        lPrecio = new JLabel("Precio: ");
        lIngredientes = new JLabel("Ingredientes: ");
        lUnidad = new JLabel("Unidad: ");
        lCantidad = new JLabel("Cantidad: ");
        lTipo = new JLabel("Tipo: ");
        
        lNombre.setFont(new Font("Sans", Font.PLAIN,20));
        lTiempoP.setFont(new Font("Sans", Font.PLAIN,20));
        lPrecio.setFont(new Font("Sans", Font.PLAIN,20));
        lIngredientes.setFont(new Font("Sans", Font.PLAIN,20));
        lUnidad.setFont(new Font("Sans", Font.PLAIN,20));
        lCantidad.setFont(new Font("Sans", Font.PLAIN,20));
        lTipo.setFont(new Font("Sans", Font.PLAIN,20));
        
        tNombreB = new JTextField(30);
        tTiempoPB = new JTextField(30);
        tPrecioB = new JTextField(30);
        tIngredientesB = new JTextField(30);
        tUnidad = new JTextField(30);
        tCantidad = new JTextField(30);
        tTipo = new JTextField(30);
        
        panelRPB = new JPanel();
        panelRPB.setVisible(false);
        panelRPB.setLayout(new GridLayout(8, 1, 8, 1));
        
        panelRPB.add(lNombre);panelRPB.add(tNombreB);
        panelRPB.add(lTiempoP);panelRPB.add(tTiempoPB);
        panelRPB.add(lPrecio);panelRPB.add(tPrecioB);
        panelRPB.add(lIngredientes);panelRPB.add(tIngredientesB);
        panelRPB.add(lUnidad);panelRPB.add(tUnidad);
        panelRPB.add(lCantidad);panelRPB.add(tCantidad);
        panelRPB.add(lTipo);panelRPB.add(tTipo);
        
        panelRPB.setBorder(new EmptyBorder(50, 100, 50, 100));
        
        panelM_.add(panelRPB, "BEBIDA");
    }
    
    public void Postre(){
        
        lNombre = new JLabel("Nombre: ");
        lTiempoP = new JLabel("Tiempo de preparacion: ");
        lPrecio = new JLabel("Precio: ");
        lIngredientes = new JLabel("Ingredientes: ");
        lPorciones = new JLabel("Porciones: ");
        lNivelAmor = new JLabel("Nivel de Amor: ");
        lNivelDulzura = new JLabel("Nivel de Dulzura: ");
        
        lNombre.setFont(new Font("Sans", Font.PLAIN,20));
        lTiempoP.setFont(new Font("Sans", Font.PLAIN,20));
        lPrecio.setFont(new Font("Sans", Font.PLAIN,20));
        lIngredientes.setFont(new Font("Sans", Font.PLAIN,20));
        lPorciones.setFont(new Font("Sans", Font.PLAIN,20));
        lNivelAmor.setFont(new Font("Sans", Font.PLAIN,20));
        lNivelDulzura.setFont(new Font("Sans", Font.PLAIN,20));
        
        tNombreP = new JTextField(50);
        tTiempoPP = new JTextField(50);
        tPrecioP = new JTextField(50);
        tIngredientesP = new JTextField(50);
        tPorcionesP = new JTextField(50);
        tNivelAmor = new JTextField(50);
        tNivelDulzura = new JTextField(50);
        
        panelRPP = new JPanel();
        panelRPP.setVisible(false);
        panelRPP.setLayout(new GridLayout(8, 1, 8, 1));
        
        panelRPP.add(lNombre);panelRPP.add(tNombreP);
        panelRPP.add(lTiempoP);panelRPP.add(tTiempoPP);
        panelRPP.add(lPrecio);panelRPP.add(tPrecioP);
        panelRPP.add(lIngredientes);panelRPP.add(tIngredientesP);
        panelRPP.add(lPorciones);panelRPP.add(tPorcionesP);
        panelRPP.add(lNivelAmor);panelRPP.add(tNivelAmor);
        panelRPP.add(lNivelDulzura);panelRPP.add(tNivelDulzura);
        
        panelRPP.setBorder(new EmptyBorder(50, 100, 50, 100));
        
        panelM_.add(panelRPP, "POSTRE");
    }
}