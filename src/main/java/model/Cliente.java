/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jr972
 */
public class Cliente extends Persona{
    
    private int id_Cliente;
    private String direccion;
    private int telefono;

    public Cliente() {
    }

    public Cliente(int id_Cliente, String direccion, int telefono) {
        this.id_Cliente = id_Cliente;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Cliente(int id_Cliente, String direccion, int telefono, int id, String rut, String nombre, String apellido) {
        super(id, rut, nombre, apellido);
        this.id_Cliente = id_Cliente;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public int getId_Cliente() {
        return id_Cliente;
    }

    public void setId_Cliente(int id_Cliente) {
        this.id_Cliente = id_Cliente;
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
        return "Cliente{" + "id_Cliente=" + id_Cliente + ", direccion=" + direccion + ", telefono=" + telefono + '}';
    }
    
    
    
}
