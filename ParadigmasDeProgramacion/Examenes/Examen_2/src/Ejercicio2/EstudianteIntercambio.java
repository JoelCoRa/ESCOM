
package Ejercicio2;

/**
 *
 * @author joelc
 */
public class EstudianteIntercambio extends Estudiante{
    protected String pais;
    protected String ciudad;

    public EstudianteIntercambio(String siglas_esc, String carrera, int semestre, String pais, String ciudad) {
        super(siglas_esc, carrera, semestre);
        this.pais = pais;
        this.ciudad = ciudad;
    }

    public void set_pais(String pais) {
        this.pais = pais;
    }

    public void set_ciudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String get_pais() {
        return pais;
    }

    public String get_ciudad() {
        return ciudad;
    }
    @Override
    public void imprimirDatos(){
        System.out.println("Estudio en "+siglas_esc+" la carrera de "+carrera+", estoy en el semestre "+semestre+" soy de "+pais+" y vivo en la "+ciudad+".");
    }      
}
