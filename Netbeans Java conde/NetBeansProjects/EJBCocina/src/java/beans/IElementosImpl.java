/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.ArrayList;
import model.cocina;


public class IElementosImpl implements IElementos {
    
    private ArrayList <cocina> lista = new ArrayList <cocina>();

    public boolean comprobarCodigo(int cod) {
        for (int i = 0; i <lista.size(); i++) {
            
            cocina c= lista.get(i);
            if(cod==c.getCodigo()){
                return true;
            
        }
    }
        return false;}

    public void agregarCocina(cocina c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<cocina> obtenerCocinas() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void eliminarCocina(int cod) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
