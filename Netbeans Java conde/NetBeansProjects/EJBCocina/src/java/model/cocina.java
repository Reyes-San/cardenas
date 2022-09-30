/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Asus
 */
public class cocina implements Serializable {
    private int codigo;
    private String marca;
    private String descripcion;
    private int platillos;
    private int precio;

    public cocina() {
    }

    public cocina(int codigo, String marca, String descripcion, int platillos, int precio) {
        this.codigo = codigo;
        this.marca = marca;
        this.descripcion = descripcion;
        this.platillos = platillos;
        this.precio = precio;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getMarca() {
        return marca;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getPlatillos() {
        return platillos;
    }

    public int getPrecio() {
        return precio;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setPlatillos(int platillos) {
        this.platillos = platillos;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
    
    
    
}
