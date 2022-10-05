/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author jr972
 */
public class Factura {
    
    private int id;
    private Date fecha;
    private Time hora;
    private int id_Cliente;

    public Factura() {
    }

    public Factura(int id, Date fecha, Time hora, int id_Cliente) {
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.id_Cliente = id_Cliente;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Time getHora() {
        return hora;
    }

    public void setHora(Time hora) {
        this.hora = hora;
    }

    public int getId_Cliente() {
        return id_Cliente;
    }

    public void setId_Cliente(int id_Cliente) {
        this.id_Cliente = id_Cliente;
    }

    @Override
    public String toString() {
        return "Factura{" + "id=" + id + ", fecha=" + fecha + ", hora=" + hora + ", id_Cliente=" + id_Cliente + '}';
    }
    
    
    
}
