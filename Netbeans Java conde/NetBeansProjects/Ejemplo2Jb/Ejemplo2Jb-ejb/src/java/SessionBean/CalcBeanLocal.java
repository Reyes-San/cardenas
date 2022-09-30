/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBean;

import javax.ejb.Local;

/**
 *
 * @author Asus
 */
@Local
public interface CalcBeanLocal {

    Integer Sumar(int a, int b);
    
}
