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
import model.Factura;

/**
 *
 * @author jr972
 */
public class Dao_Factura implements Crud<Factura>{

    private ConexionSingleton oConexion;

    public Dao_Factura(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Factura obj) {
        String sql = "INSERT INTO Factura VALUES(NULL,'" + obj.getFecha()+ "', '"+obj.getHora()+"', "+obj.getId_Cliente()+")";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException e) {
            Logger.getLogger(Dao_Factura.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void delete(Factura obj) {
        String sql = "DELETE FROM Factura WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Factura.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Factura get(int id) {
        String sql = "SELECT * FROM Factura WHERE id ='" + id + "'";
        try {
            ResultSet oResultSet = oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Factura(oResultSet.getInt("id"), oResultSet.getDate("fecha"), oResultSet.getTime("hora"), oResultSet.getInt("id_cliente"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Factura.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Factura obj) {
        String sql = "UPDATE Factura SET fecha='" + obj.getFecha()+ "' WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Factura.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Factura> getAll() {
        String sql = "SELECT * FROM Factura";
        List<Factura> oList = new ArrayList<>();
        try {

            ResultSet oResultSet = this.oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {
                oList.add(new Factura(oResultSet.getInt("id"), oResultSet.getDate("fecha"), oResultSet.getTime("hora"), oResultSet.getInt("id_cliente")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Factura.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
