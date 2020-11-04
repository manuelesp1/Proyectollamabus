/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author V330
 */
public class U01_Ruta {
    private String fecha;
    private  int itinerarios_id;
    private int duracion;
    private double precio;

    public U01_Ruta() {
    }

    public U01_Ruta(String fecha, int itinerarios_id, int duracion, double precio) {
        this.fecha = fecha;
        this.itinerarios_id = itinerarios_id;
        this.duracion = duracion;
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getItinerarios_id() {
        return itinerarios_id;
    }

    public void setItinerarios_id(int itinerarios_id) {
        this.itinerarios_id = itinerarios_id;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    
}
