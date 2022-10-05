/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jr972
 */
public class Detalle {
    
    private int id;
    private int id_producto;
    private int cantidad;

    public Detalle() {
    }

    public Detalle(int id, int id_producto, int cantidad) {
        this.id = id;
        this.id_producto = id_producto;
        this.cantidad = cantidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "Detalle{" + "id=" + id + ", id_producto=" + id_producto + ", cantidad=" + cantidad + '}';
    }
    
    
    
}
