
package Modelo;

public class Plato {
    int id_plato;
    int precio;
    String nombre;

    public Plato() {
    }

    public Plato(int id_plato,int precio, String nom) {
        this.id_plato=id_plato;
        this.precio = precio;
        this.nombre = nom;
    }

    public int getIdid_plato() {
        return id_plato;
    }

    public void setid_plato(int id_plato) {
        this.id_plato = id_plato;
    }

    public int getprecio() {
        return precio;
    }

    public void setprecio(int precio) {
        this.precio = precio;
    }

    public String getnombre() {
        return nombre;
    }

    public void setnombre(String nombre) {
        this.nombre = nombre;
    }
    
}
