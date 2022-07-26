package Modelo;

public class Repartidor extends Persona{
    private static int IDR = 1;
    private int id;
    private int edad;
    private char genero;
    private float salario;
    private boolean ocupado;
    private String transporte;
    private float score;
    
    public Repartidor(){
        id = IDR;
        IDR++;
    }

    public Repartidor(int edad, char genero, float salario, String transporte, String nombre, long numTelefono) {
        super(nombre, numTelefono);
        this.edad = edad;
        this.genero = genero;
        this.salario = salario;
        this.ocupado = false;
        this.transporte = transporte;
        this.score = 5;
    }
    
    public int getId() {return id;}
    public int getEdad() {return edad;}
    public char getGenero() {return genero;}
    public float getSalario() {return salario;}
    public boolean estaOcupado() {return ocupado;}
    public String getTransporte() {return transporte;}
    public float getScore() {return score;}

    public void setEdad(int edad) {this.edad = edad;}
    public void setGenero(char genero) {this.genero = genero;}
    public void setSalario(float salario) {this.salario = salario;}
    public void setOcupado(boolean ocupado) {this.ocupado = ocupado;}
    public void setTransporte(String transporte) {this.transporte = transporte;}
    public void setScore(float score) {this.score = score;}
    
    public void sumarScore(){
        if(this.score == 5){}
        else
            this.score += 1;
    }
    
    @Override
    public String infoPersona(){
        return "Nombre: " + nombre + "\n Telefono: " + numTelefono + "\n Edad: " + edad + "\n Genero: " + genero + "\n Salario: " + salario + "\n Estado: " + ocupado + "\n Transporte: " + transporte + "\n Score: " + score;
    }
}
