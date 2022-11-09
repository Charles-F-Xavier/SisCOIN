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
import model.Cliente;
import model.Crud;

/**
 *
 * @author jr972
 */
public class Dao_Cliente implements Crud<Cliente>{
    private ConexionSingleton oConexion;

    public Dao_Cliente(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Cliente obj) {
        String sql = "INSERT INTO cliente VALUES(NULL,'" + obj.getDireccion()+ "','" + obj.getTelefono()+ "','" + obj.getCorreo()+ "','" + obj.getClave()+ "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Cliente obj) {
        String sql = "DELETE FROM cliente WHERE id='" + obj.getRut() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Cliente get(int id) {
        String sql = "SELECT * FROM `persona_entidad` INNER JOIN cliente ON persona_entidad.id=cliente.id WHERE id='"+id+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Cliente(oResultSet.getInt("id"), oResultSet.getString("direccion"), oResultSet.getInt("telefono"), oResultSet.getString("correo"), oResultSet.getString("clave"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Cliente get(String rut) {
        String sql = "SELECT * FROM `persona_entidad` INNER JOIN cliente ON persona_entidad.id=cliente.id WHERE rut='"+rut+"'";
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Cliente(oResultSet.getInt("id"), oResultSet.getString("direccion"), oResultSet.getInt("telefono"), oResultSet.getString("correo"), oResultSet.getString("clave"), oResultSet.getInt("id"),oResultSet.getString("rut"), oResultSet.getString("nombre"),oResultSet.getString("apellido"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    

    @Override
    public void update(Cliente obj) {
        String sql = "UPDATE cliente SET direccion='"+obj.getDireccion()+"', telefono='"+obj.getTelefono()+"', correo='"+obj.getCorreo()+"', clave='"+obj.getClave()+"' WHERE id='"+obj.getId()+"'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Cliente> getAll() {
        String sql = "SELECT * FROM `persona_entidad` INNER JOIN cliente ON persona_entidad.id=cliente.id;";
        List<Cliente> oList=new ArrayList<>();
        
        try {
            ResultSet oResultSet=oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {                
                oList.add(new Cliente(oResultSet.getInt("id"), oResultSet.getString("direccion"), oResultSet.getInt("telefono"), oResultSet.getString("correo"), oResultSet.getString("clave"), oResultSet.getInt("id"),oResultSet.getString("rut"), oResultSet.getString("nombre"),oResultSet.getString("apellido")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
}
