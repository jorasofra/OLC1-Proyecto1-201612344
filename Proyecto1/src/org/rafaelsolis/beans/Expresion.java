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
public class Expresion {
    private String nombre;
    private Object expresion;

    public Expresion() {
    }

    public Expresion(String nombre, Object expresion) {
        this.nombre = nombre;
        this.expresion = expresion;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setExpresion(Object expresion) {
        this.expresion = expresion;
    }

    public Object getExpresion() {
        return expresion;
    }
    
}
