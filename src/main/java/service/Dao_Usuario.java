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
import model.Usuario;

/**
 *
 * @author jr972
 */
public class Dao_Usuario implements Crud<Usuario>{

    private ConexionSingleton oConexion;

    public Dao_Usuario(ConexionSingleton oConexionSingleton) {
        this.oConexion = oConexionSingleton;
    }

    @Override
    public void insert(Usuario obj) {
        String sql = "INSERT INTO usuario VALUES('"+obj.getId_user()+"','" + obj.getCorreo() + "','" + obj.getTelefono() + "',sha2('" + obj.getClave() + "',0), '"+obj.getCargo()+"', '"+obj.getArea()+"')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Usuario obj) {
        String sql = "DELETE FROM usuario WHERE id='" + obj.getId_user()+ "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Usuario get(int id) {
        String sql = "SELECT * FROM usuario WHERE id='"+id+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Usuario(oResultSet.getInt("id"), oResultSet.getString("correo"), oResultSet.getInt("telefono"), oResultSet.getString("clave"), oResultSet.getInt("tipo_user"), oResultSet.getInt("cargo"), oResultSet.getInt("area"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Usuario get(String rut) {
        String sql = "SELECT * FROM usuario WHERE rut='"+rut+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Usuario(oResultSet.getInt("id"), oResultSet.getString("correo"), oResultSet.getInt("telefono"), oResultSet.getString("clave"), oResultSet.getInt("tipo_user"),oResultSet.getInt("cargo"), oResultSet.getInt("area"), oResultSet.getInt("id"),oResultSet.getString("rut"), oResultSet.getString("nombre"),oResultSet.getString("apellido"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Usuario obj) {
        String sql = "UPDATE usuario SET correo='"+obj.getCorreo()+"', telefono='"+obj.getTelefono()+"', clave='"+obj.getClave()+"', tipo_user='"+obj.getTipo_user()+"' WHERE id='"+obj.getId_user()+"'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Usuario> getAll() {
        String sql = "SELECT * FROM persona_entidad INNER JOIN usuario ON usuario.id=persona_entidad.id;";
        List<Usuario> oList=new ArrayList<>();
        
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {                
                oList.add(new Usuario(oResultSet.getInt("id"), oResultSet.getString("correo"), oResultSet.getInt("telefono"), oResultSet.getString("clave"), 
                        oResultSet.getInt("tipo_user"),oResultSet.getInt("cargo"), oResultSet.getInt("area"),oResultSet.getInt("id"),oResultSet.getString("rut"),
                        oResultSet.getString("nombre"),oResultSet.getString("apellido")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
