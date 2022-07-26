package Vista;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;

public class MostrarMenu extends JFrame{
    public JButton backtoMenuBotton;
    public JLabel lId, lNombre, lPrecio, lTiempoP, lIngredientes, lTitulo;
    public JPanel panelCol, panelBack, panelPlatillo, panelPla,panelT;
    
    public MostrarMenu(){
        getContentPane().setLayout(new BorderLayout());
        
        setTitle("Platillos");
        setSize(800, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setVisible(false);
        setResizable(true);
        
        lId = new JLabel("Id");
        lNombre = new JLabel("Nombre");
        lPrecio = new JLabel("Precio");
        lTiempoP = new JLabel("Tiempo de preparacion (min)");
        
        lId.setFont(new Font("Sans", Font.PLAIN,15));
        lNombre.setFont(new Font("Sans", Font.PLAIN,15));
        lPrecio.setFont(new Font("Sans", Font.PLAIN,15));
        lTiempoP.setFont(new Font("Sans", Font.PLAIN,15));
        
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        lTitulo = new JLabel("Platillos");
        lTitulo.setFont(new Font("Sans", Font.PLAIN,30));
        panelT.add(lTitulo);
        
        panelCol = new JPanel();
        panelCol.setLayout(new GridLayout(1, 7));
        panelPlatillo = new JPanel();
        panelPlatillo.setLayout(new GridLayout(10,1));
        
        panelCol.add(lId);
        panelCol.add(lNombre);
        panelCol.add(lPrecio);
        panelCol.add(lTiempoP);
        
        panelPlatillo.add(panelCol);
        panelPlatillo.setBorder(new EmptyBorder(10, 65, 0, 50));
        
        panelBack = new JPanel();
        panelBack.setLayout(new FlowLayout());
        
        backtoMenuBotton = new JButton("Regresar");
        backtoMenuBotton.setPreferredSize(new Dimension(150, 50));
        backtoMenuBotton.setFont(new Font("Sans", Font.PLAIN,25));
        panelBack.add(backtoMenuBotton);
        panelBack.setBorder(new EmptyBorder(0, 0, 20, 0));
        
        add(panelT, BorderLayout.NORTH);
        add(panelPlatillo, BorderLayout.CENTER);
        add(panelBack, BorderLayout.SOUTH);
    }
}
