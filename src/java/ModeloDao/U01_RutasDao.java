/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDao;

import Config.Conexion;
import Interfaces.U01_CRUD_RUTA;
import Modelo.U01_Ruta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author V330
 */
public class U01_RutasDao implements U01_CRUD_RUTA{
     Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public List consultar_ruta(){
        ArrayList<U01_Ruta> list = new ArrayList<>();
        String sql = "select itinerario_id, fecha_salida, duracion, costo_ruta from itinerarios t1 inner join rutas t2 on t1.ruta_id = t2.ruta_id";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                U01_Ruta rutas = new U01_Ruta();
                rutas.setItinerarios_id(rs.getInt("itinerario_id"));
                rutas.setDuracion(rs.getInt("duracion"));
                rutas.setFecha(rs.getString("fecha_salida"));
                rutas.setPrecio(rs.getDouble("costo_ruta"));
                list.add(rutas);
            }
        } catch (Exception e) {
        }
        return list;
    }

}
