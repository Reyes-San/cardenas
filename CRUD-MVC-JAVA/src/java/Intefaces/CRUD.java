
package Intefaces;

import Modelo.Persona;
import Modelo.Plato;
import java.util.List;


public interface CRUD {
    public List listar();
    public Persona list(int id);
    public boolean add(Persona per);
    public boolean edit(Persona per);
    public boolean eliminar(int id);
    
    public List listarPlato();
    public Plato listPlato(int id);
    public boolean addPlato(Plato pla);
    public boolean editPlato(Plato pla);
    public boolean eliminarPlato(int id);
}
