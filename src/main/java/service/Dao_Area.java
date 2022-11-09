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
import model.Area;
import model.Crud;

/**
 *
 * @author jr972
 */
public class Dao_Area implements Crud<Area>{
    
    private ConexionSingleton oConexion;

    public Dao_Area(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Area obj) {
        String sql = "INSERT INTO area VALUES(NULL,'" + obj.getDetalle()+ "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Area.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Area obj) {
        String sql = "DELETE FROM area WHERE id='" + obj.getId()+ "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Area.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Area get(int id) {
        String sql = "SELECT * FROM area WHERE id='"+id+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Area(oResultSet.getInt("id"), oResultSet.getString("detalle"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Area.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Area obj) {
        String sql = "UPDATE area SET detalle='"+obj.getDetalle()+"' WHERE id='"+obj.getId()+"'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Area.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Area> getAll() {
        String sql = "SELECT * FROM area";
        List<Area> oList=new ArrayList<>();
        
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {                
                oList.add(new Area(oResultSet.getInt("id"), oResultSet.getString("detalle")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Area.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
