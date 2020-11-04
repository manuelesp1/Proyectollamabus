/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import java.util.List;
import Modelo.U01_Pasajero;
/**
 *
 * @author V330
 */
public interface U01_CRUD_ASIENTOS {
   public List consultarDisponibilidad(int itinerario_id);
   public boolean guardar(U01_Pasajero pasajero);
}
