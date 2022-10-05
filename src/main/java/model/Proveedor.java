/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jr972
 */
public class Proveedor extends Persona{
    
    private int id_Proveedor;
    private String direccion;
    private int telefono;

    public Proveedor() {
    }

    public Proveedor(int id_Proveedor, String direccion, int telefono) {
        this.id_Proveedor = id_Proveedor;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Proveedor(int id_Proveedor, String direccion, int telefono, int id, String rut, String nombre, String apellido) {
        super(id, rut, nombre, apellido);
        this.id_Proveedor = id_Proveedor;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public int getId_Proveedor() {
        return id_Proveedor;
    }

    public void setId_Proveedor(int id_Proveedor) {
        this.id_Proveedor = id_Proveedor;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Proveedor{" + "id_Proveedor=" + id_Proveedor + ", direccion=" + direccion + ", telefono=" + telefono + '}';
    }
    
    
    
}
