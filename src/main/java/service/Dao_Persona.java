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
import model.Persona;

/**
 *
 * @author jr972
 */
public class Dao_Persona implements Crud<Persona> {

    private ConexionSingleton oConexion;

    public Dao_Persona(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Persona obj) {
        String sql = "INSERT INTO persona_entidad VALUES(NULL,'" + obj.getRut() + "','" + obj.getNombre() + "','" + obj.getApellido() + "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Persona obj) {
        String sql = "DELETE FROM persona_entidad WHERE rut='" + obj.getRut() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Persona get(int id) {
        String sql = "SELECT * FROM persona_entidad WHERE id='"+id+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Persona(oResultSet.getInt("id"), oResultSet.getString("rut"), oResultSet.getString("nombre"), oResultSet.getString("apellido"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Persona get(String rut) {
        String sql = "SELECT * FROM persona_entidad WHERE rut='"+rut+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Persona(oResultSet.getInt("id"), oResultSet.getString("rut"), oResultSet.getString("nombre"), oResultSet.getString("apellido"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Persona obj) {
        String sql = "UPDATE persona_entidad SET nombre='"+obj.getNombre()+"', apellido='"+obj.getApellido()+"' WHERE rut='"+obj.getRut()+"'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Persona> getAll() {
        String sql = "SELECT * FROM persona_entidad";
        List<Persona> oList=new ArrayList<>();
        
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {                
                oList.add(new Persona(oResultSet.getInt("id"), oResultSet.getString("rut"), oResultSet.getString("nombre"), oResultSet.getString("apellido")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }

}
