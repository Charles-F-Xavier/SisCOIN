/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author jr972
 */
public class Venta {
    
    private int id;
    private int id_detalle;
    private int id_factura;
    private int id_usuario;
    private int id_pedido;

    public Venta() {
    }

    public Venta(int id, int id_detalle, int id_factura, int id_usuario, int id_pedido) {
        this.id = id;
        this.id_detalle = id_detalle;
        this.id_factura = id_factura;
        this.id_usuario = id_usuario;
        this.id_pedido = id_pedido;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_detalle() {
        return id_detalle;
    }

    public void setId_detalle(int id_detalle) {
        this.id_detalle = id_detalle;
    }

    public int getId_factura() {
        return id_factura;
    }

    public void setId_factura(int id_factura) {
        this.id_factura = id_factura;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    @Override
    public String toString() {
        return "Venta{" + "id=" + id + ", id_detalle=" + id_detalle + ", id_factura=" + id_factura + ", id_usuario=" + id_usuario + ", id_pedido=" + id_pedido + '}';
    }
    
    
    
}
