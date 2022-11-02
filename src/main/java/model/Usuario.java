/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jr972
 */
public class Usuario extends Persona{
    
    private int id_user;
    private String correo;
    private int telefono;
    private String clave;
    private int tipo_user;
    private int cargo;
    private int area;

    public Usuario() {
    }

    public Usuario(int id_user, String correo, int telefono, String clave, int tipo_user, int cargo, int area) {
        this.id_user = id_user;
        this.correo = correo;
        this.telefono = telefono;
        this.clave = clave;
        this.tipo_user = tipo_user;
        this.cargo = cargo;
        this.area = area;
    }

    public Usuario(int id_user, String correo, int telefono, String clave, int tipo_user, int cargo, int area, int id, String rut, String nombre, String apellido) {
        super(id, rut, nombre, apellido);
        this.id_user = id_user;
        this.correo = correo;
        this.telefono = telefono;
        this.clave = clave;
        this.tipo_user = tipo_user;
        this.cargo = cargo;
        this.area = area;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getTipo_user() {
        return tipo_user;
    }

    public void setTipo_user(int tipo_user) {
        this.tipo_user = tipo_user;
    }

    public int getCargo() {
        return cargo;
    }

    public void setCargo(int cargo) {
        this.cargo = cargo;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_user=" + id_user + ", correo=" + correo + ", telefono=" + telefono + ", clave=" + clave + ", tipo_user=" + tipo_user + ", cargo=" + cargo + ", area=" + area + '}';
    }

    
    
    
    
}
