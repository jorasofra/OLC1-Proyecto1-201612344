/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.rafaelsolis.beans;

/**
 *
 * @author rafael
 */
public class Conjunto {
    private String nombre;
    private String conjunto;

    public Conjunto(String nombre, String conjunto) {
        this.nombre = nombre;
        this.conjunto = conjunto;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setConjunto(String conjunto) {
        this.conjunto = conjunto;
    }

    public String getConjunto() {
        return conjunto;
    }
    
}
