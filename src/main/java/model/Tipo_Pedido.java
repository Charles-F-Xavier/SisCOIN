/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jr972
 */
public class Tipo_Pedido {
    
    private int id;
    private String detalle;

    public Tipo_Pedido() {
    }

    public Tipo_Pedido(int id, String detalle) {
        this.id = id;
        this.detalle = detalle;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    @Override
    public String toString() {
        return "Tipo_Pedido{" + "id=" + id + ", detalle=" + detalle + '}';
    }
    
    
}
