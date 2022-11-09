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
import model.Producto;

/**
 *
 * @author jr972
 */
public class Dao_Producto implements Crud<Producto>{

    private ConexionSingleton oConexion;

    public Dao_Producto(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Producto obj) {
        String sql = "INSERT INTO Producto VALUES(NULL,'" + obj.getNombre()+ "','" + obj.getDescripcion()+ "','" + obj.getPrecio()+ "','" + obj.getStock()+ "','" + obj.getId_categoria()+ "','" + obj.getId_proveedor()+ "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException e) {
            Logger.getLogger(Dao_TipoUser.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void delete(Producto obj) {
        String sql = "DELETE FROM Producto WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Producto get(int id) {
        String sql = "SELECT * FROM Producto WHERE id ='" + id + "'";
        try {
            ResultSet oResultSet = oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Producto(oResultSet.getInt("id"), oResultSet.getString("nombre"),oResultSet.getString("descripcion"),oResultSet.getInt("precio"),oResultSet.getInt("stock"),oResultSet.getInt("id_categoria"),oResultSet.getInt("id_proveedor"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Producto obj) {
        String sql = "UPDATE Producto SET nombre='" + obj.getNombre()+ "', descripcion='" + obj.getDescripcion()+ "', precio='" + obj.getPrecio()+ "', stock='" + obj.getStock()+ "', id_categoria='" + obj.getId_categoria()+ "' WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Producto> getAll() {
        String sql = "SELECT * FROM Producto";
        List<Producto> oList = new ArrayList<>();
        try {

            ResultSet oResultSet = this.oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {
                oList.add(new Producto(oResultSet.getInt("id"), oResultSet.getString("nombre"),oResultSet.getString("descripcion"),oResultSet.getInt("precio"),oResultSet.getInt("stock"),oResultSet.getInt("id_categoria"),oResultSet.getInt("id_proveedor")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
