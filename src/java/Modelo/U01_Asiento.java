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
public class U01_Asiento {
     private int id_asiento;
    private int disponibilidad;

    public U01_Asiento() {
    }

    public U01_Asiento(int id_asiento, int disponibilidad) {
        this.id_asiento = id_asiento;
        this.disponibilidad = disponibilidad;
    }

    public int getId_asiento() {
        return id_asiento;
    }

    public void setId_asiento(int id_asiento) {
        this.id_asiento = id_asiento;
    }

    public int getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(int disponibilidad) {
        this.disponibilidad = disponibilidad;
    }
    
    
}
