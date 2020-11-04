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
public class U01_Pasajero {
    private String tipo_doc;
    private String numdoc;
    private String nombre;
    private String apepat;
    private String apemat;
    private String edad;
    private String sexo;
    private String telef;
    private String correo;
    private String itinerario_id;
    private String nom_asiento;
    private String usuario_id;
    private String precio;

    public U01_Pasajero(String tipo_doc, String numdoc, String nombre, String apepat, String apemat, String edad, String sexo, String telef, String correo, String itinerario_id, String nom_asiento, String usuario_id, String precio) {
        this.tipo_doc = tipo_doc;
        this.numdoc = numdoc;
        this.nombre = nombre;
        this.apepat = apepat;
        this.apemat = apemat;
        this.edad = edad;
        this.sexo = sexo;
        this.telef = telef;
        this.correo = correo;
        this.itinerario_id = itinerario_id;
        this.nom_asiento = nom_asiento;
        this.usuario_id = usuario_id;
        this.precio = precio;
    }

    public U01_Pasajero() {
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }


    public String getTipo_doc() {
        return tipo_doc;
    }

    public void setTipo_doc(String tipo_doc) {
        this.tipo_doc = tipo_doc;
    }

    public String getNumdoc() {
        return numdoc;
    }

    public void setNumdoc(String numdoc) {
        this.numdoc = numdoc;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getApemat() {
        return apemat;
    }

    public void setApemat(String apemat) {
        this.apemat = apemat;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTelef() {
        return telef;
    }

    public void setTelef(String telef) {
        this.telef = telef;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getItinerario_id() {
        return itinerario_id;
    }

    public void setItinerario_id(String itinerario_id) {
        this.itinerario_id = itinerario_id;
    }

    public String getNom_asiento() {
        return nom_asiento;
    }

    public void setNom_asiento(String nom_asiento) {
        this.nom_asiento = nom_asiento;
    }

    public String getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(String usuario_id) {
        this.usuario_id = usuario_id;
    }

    
    
}
