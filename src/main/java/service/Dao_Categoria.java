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
import model.Categoria;
import model.Crud;

/**
 *
 * @author jr972
 */
public class Dao_Categoria implements Crud<Categoria>{
    
    private ConexionSingleton oConexion;

    public Dao_Categoria (ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Categoria obj) {
        String sql = "INSERT INTO categoria VALUES(NULL,'" + obj.getDetalle()+ "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Categoria obj) {
        String sql = "DELETE FROM categoria WHERE id='" + obj.getId()+ "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Categoria get(int id) {
        String sql = "SELECT * FROM categoria WHERE id='"+id+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Categoria(oResultSet.getInt("id"), oResultSet.getString("detalle"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Categoria obj) {
        String sql = "UPDATE Categoria SET detalle='"+obj.getDetalle()+"' WHERE id='"+obj.getId()+"'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Categoria> getAll() {
        String sql = "SELECT * FROM Categoria";
        List<Categoria> oList=new ArrayList<>();
        
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {                
                oList.add(new Categoria(oResultSet.getInt("id"), oResultSet.getString("detalle")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
