package Objetos;

public class Institucion {

    private String nombre;
    private String dane;

    public Institucion(String nombre, String dane) {
        this.nombre = nombre;
        this.dane = dane;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDane() {
        return dane;
    }

    public void setDane(String dane) {
        this.dane = dane;
    }

}
