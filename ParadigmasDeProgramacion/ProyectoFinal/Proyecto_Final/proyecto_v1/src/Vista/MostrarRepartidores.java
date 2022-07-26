package Vista;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;

public class MostrarRepartidores extends JFrame{
    public JButton backtoMenuBotton;
    public JLabel lId, lNombre, lEdad, lGenero, lSalario, lOcupado, lTransporte, lScore, lTitulo;
    public JPanel panelCol, panelBack, panelRepartidor, panelRep, panelT;
    
    public MostrarRepartidores(){
        getContentPane().setLayout(new BorderLayout());
        
        setTitle("Repartidores");
        setSize(800, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setVisible(false);
        setResizable(true);
        
        lId = new JLabel("Id");
        lNombre = new JLabel("Nombre");
        lEdad = new JLabel("Edad");
        lGenero = new JLabel("Genero");
        lSalario = new JLabel("Salario");
        lOcupado = new JLabel("Ocupado");
        lTransporte = new JLabel("Transporte");
        lScore = new JLabel("Score");
        
        lId.setFont(new Font("Sans", Font.PLAIN,15));
        lNombre.setFont(new Font("Sans", Font.PLAIN,15));
        lEdad.setFont(new Font("Sans", Font.PLAIN,15));
        lGenero.setFont(new Font("Sans", Font.PLAIN,15));
        lSalario.setFont(new Font("Sans", Font.PLAIN,15));
        lOcupado.setFont(new Font("Sans", Font.PLAIN,15));
        lTransporte.setFont(new Font("Sans", Font.PLAIN,15));
        lScore.setFont(new Font("Sans", Font.PLAIN,15));
        
        panelT = new JPanel();
        panelT.setLayout(new FlowLayout());
        lTitulo = new JLabel("Repartidores");
        lTitulo.setFont(new Font("Sans", Font.PLAIN,30));
        panelT.add(lTitulo);
        
        panelCol = new JPanel();
        panelCol.setLayout(new GridLayout(1, 7));
        panelRepartidor = new JPanel();
        panelRepartidor.setLayout(new GridLayout(10,1));
        panelRepartidor.setBorder(new EmptyBorder(10, 65, 0, 50));
        
        panelBack = new JPanel();
        panelBack.setLayout(new FlowLayout());
        
        backtoMenuBotton = new JButton("Regresar");
        backtoMenuBotton.setPreferredSize(new Dimension(150, 50));
        backtoMenuBotton.setFont(new Font("Sans", Font.PLAIN,25));
        panelBack.add(backtoMenuBotton);
        panelBack.setBorder(new EmptyBorder(0, 0, 20, 0));
        
        add(panelT, BorderLayout.NORTH);
        add(panelRepartidor, BorderLayout.CENTER);
        add(panelBack, BorderLayout.SOUTH);
    }
}