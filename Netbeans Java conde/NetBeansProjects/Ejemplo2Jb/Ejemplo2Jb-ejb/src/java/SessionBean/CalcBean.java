/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBean;

import javax.ejb.Stateless;

/**
 *
 * @author Asus
 */
@Stateless
public class CalcBean implements CalcBeanLocal {

    @Override
    public Integer Sumar(int a, int b) {
        return (a+b);
    }
    

    
}
