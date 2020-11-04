/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDao;

import Config.Conexion;
import Interfaces.U01_CRUD_ASIENTOS;
import Modelo.U01_Pasajero;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Modelo.U01_Asiento;

/**
 *
 * @author V330
 */
public class U01_PasajeroDao implements U01_CRUD_ASIENTOS{
 Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    @Override
    public List consultarDisponibilidad(int itinerario_id) {
        ArrayList<U01_Asiento> list = new ArrayList<>();
        String sql = "select itinerario_id, nom_asiento, t3.disponible from itinerarios"
                + " t1 inner join buses t2 on t1.bus_id = t2.bus_id inner join asientos "
                + "t3 on t2.bus_id = t3.bus_id where itinerario_id = ?";
        //where itinerario_id = ? and asiento_id = ?
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, itinerario_id);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Asiento asientos = new U01_Asiento();
                asientos.setDisponibilidad(rs.getInt("disponible"));
                asientos.setId_asiento(rs.getInt("nom_asiento"));
                list.add(asientos);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public boolean guardar(U01_Pasajero pasajero) {
        try {
            con = cn.getConnection();
            ps = con.prepareStatement("insert into personas (nombres, apellido_paterno, apellido_materno,sexo, telefono, edad, documento_id, cod_documento, cuenta_id) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, pasajero.getNombre());
            ps.setString(2, pasajero.getApepat());
            ps.setString(3, pasajero.getApemat());
            ps.setString(4, pasajero.getSexo());
            ps.setString(5, pasajero.getTelef());
            ps.setInt(6, Integer.parseInt(pasajero.getEdad()));
            ps.setInt(7, Integer.parseInt(pasajero.getTipo_doc()));
            ps.setString(8, pasajero.getNumdoc());
            ps.setInt(9, Integer.parseInt(pasajero.getUsuario_id()));
           
            System.out.println("-------dao----------");
            System.out.println("tipodoc: "+pasajero.getTipo_doc());
            System.out.println("numdoc: "+pasajero.getNumdoc());
            System.out.println("nombre: "+pasajero.getNombre());
            System.out.println("apepat: "+pasajero.getApepat());
            System.out.println("apemat: "+pasajero.getApemat());
            System.out.println("edad: "+pasajero.getEdad());
            System.out.println("sexo: "+pasajero.getSexo());
            System.out.println("telef: "+pasajero.getTelef());
            //System.out.println("itinerario: "+itinerario_id);
            //System.out.println("nom_asiento: "+nom_asiento);
            System.out.println("usuarioid: "+pasajero.getUsuario_id());
            
            ps.executeUpdate();
            
            ps=con.prepareStatement("insert into comprobantes (persona_id, cuenta_id, itinerario_id,asiento_id, monto) values (?,?,?,?,?)");
            ps.setString(1, pasajero.getUsuario_id());
            
        } catch (Exception e) {
            System.out.println("error: " + e);
        }
        return false;
    }
    
    
}
