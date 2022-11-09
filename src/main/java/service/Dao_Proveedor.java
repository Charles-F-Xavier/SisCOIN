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
import model.Proveedor;

/**
 *
 * @author jr972
 */

public class Dao_Proveedor implements Crud<Proveedor>{

    private ConexionSingleton oConexion;

    public Dao_Proveedor(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Proveedor obj) {
        String sql = "INSERT INTO proveedor VALUES(NULL,'" + obj.getDireccion()+ "','" + obj.getTelefono()+ "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Proveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Proveedor obj) {
        String sql = "DELETE FROM Proveedor WHERE id='" + obj.getId()+ "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Proveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Proveedor get(int id) {
        String sql = "SELECT * FROM `persona_entidad` INNER JOIN proveedor ON persona_entidad.id=proveedor.id WHERE id='"+id+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Proveedor(oResultSet.getInt("id"), oResultSet.getString("direccion"), oResultSet.getInt("telefono"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Proveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Proveedor get(String rut) {
        String sql = "SELECT * FROM `persona_entidad` INNER JOIN proveedor ON persona_entidad.id=proveedor.id WHERE rut='"+rut+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Proveedor(oResultSet.getInt("id"), oResultSet.getString("direccion"), oResultSet.getInt("telefono"), oResultSet.getInt("id"),oResultSet.getString("rut"), oResultSet.getString("nombre"),oResultSet.getString("apellido"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Proveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    

    @Override
    public void update(Proveedor obj) {
        String sql = "UPDATE Proveedor SET direccion='"+obj.getDireccion()+"', telefono='"+obj.getTelefono()+"' WHERE id='"+obj.getId()+"'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Proveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Proveedor> getAll() {
        String sql = "SELECT * FROM `persona_entidad` INNER JOIN proveedor ON persona_entidad.id=proveedor.id;";
        List<Proveedor> oList=new ArrayList<>();
        
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {                
                oList.add(new Proveedor(oResultSet.getInt("id"), oResultSet.getString("direccion"), oResultSet.getInt("telefono"), oResultSet.getInt("id"),oResultSet.getString("rut"), oResultSet.getString("nombre"),oResultSet.getString("apellido")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Proveedor.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
