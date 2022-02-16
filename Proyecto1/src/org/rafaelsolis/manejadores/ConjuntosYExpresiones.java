/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.rafaelsolis.manejadores;

import org.rafaelsolis.beans.Conjunto;
import org.rafaelsolis.beans.Expresion;
import java.util.ArrayList;

/**
 *
 * @author rafael
 */
public class ConjuntosYExpresiones {
    private ArrayList<Conjunto> listaConjuntos;
    private ArrayList<Expresion> listaExpresiones;

    public ConjuntosYExpresiones() {
        this.listaConjuntos = new ArrayList<>();
        this.listaExpresiones = new ArrayList<>();
    }
    
    public void agregarConjunto(String nombre, String definicion) {
        Conjunto nuevo = new Conjunto(nombre, definicion);
        this.listaConjuntos.add(nuevo);
    }
    
    public void agregarExpresion(String nombre, String definicion) {
        Expresion nuevo = new Expresion(nombre, definicion);
        this.listaExpresiones.add(nuevo);
    }
    
    public ArrayList<Conjunto> getConjuntos() {
        return this.listaConjuntos;
    }
    
    public ArrayList<Expresion> getExpresion() {
        return this.listaExpresiones;
    }
    
    
}
