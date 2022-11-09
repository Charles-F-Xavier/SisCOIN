/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import db.ConexionSingleton;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Crud;
import model.Detalle;

/**
 *
 * @author jr972
 */
public class Dao_Detalle implements Crud<Detalle>{

    private ConexionSingleton oConexion;

    public Dao_Detalle(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Detalle obj) {
        String sql = "INSERT INTO detalle VALUES(NULL,'" + obj.getId_producto() + "', "+obj.getCantidad()+")";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException e) {
            Logger.getLogger(Dao_Detalle.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void delete(Detalle obj) {
        String sql = "DELETE FROM detalle WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Detalle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Detalle get(int id) {
        String sql = "SELECT * FROM detalle WHERE id_venta ='" + id + "'";
        try {
            ResultSet oResultSet = oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Detalle(oResultSet.getInt("id"), oResultSet.getInt("id_producto"), oResultSet.getInt("cantidad"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Detalle.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Detalle obj) {
        String sql = "UPDATE detalle SET cantidad='" + obj.getCantidad()+ "' WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Detalle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Detalle> getAllByVenta(int id) {
        String sql = "SELECT * FROM detalle where id_venta="+id;
        List<Detalle> oList = new ArrayList<>();
        try {

            ResultSet oResultSet = this.oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {
                oList.add(new Detalle(oResultSet.getInt("id"), oResultSet.getInt("id_producto"), oResultSet.getInt("cantidad")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Detalle.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }

    @Override
    public List<Detalle> getAll() {
        String sql = "SELECT * FROM detalle";
        List<Detalle> oList = new ArrayList<>();
        try {

            ResultSet oResultSet = this.oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {
                oList.add(new Detalle(oResultSet.getInt("id"), oResultSet.getInt("id_producto"), oResultSet.getInt("cantidad")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Detalle.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
