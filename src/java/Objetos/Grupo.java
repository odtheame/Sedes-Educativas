
package Objetos;

public class Grupo {
    
    private String id;
    private String nombre;
    private String numGrupo;

    public Grupo(String id, String nombre, String numGrupo) {
        this.id = id;
        this.nombre = nombre;
        this.numGrupo = numGrupo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNumGrupo() {
        return numGrupo;
    }

    public void setNumGrupo(String numGrupo) {
        this.numGrupo = numGrupo;
    }
    
}
