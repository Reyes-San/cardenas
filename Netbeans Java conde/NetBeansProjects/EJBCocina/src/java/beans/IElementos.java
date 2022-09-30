/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.ArrayList;
import javax.ejb.Remote;
import model.cocina;

/**
 *
 * @author Asus
 */
@Remote
public interface IElementos {
    
    boolean comprobarCodigo(int cod);
    void agregarCocina (cocina c);
    ArrayList <cocina> obtenerCocinas();
    void eliminarCocina(int cod);
    
    
    
}
