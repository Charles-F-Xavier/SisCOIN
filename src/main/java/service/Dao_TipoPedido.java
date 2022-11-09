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
import model.Tipo_Pedido;

/**
 *
 * @author jr972
 */
public class Dao_TipoPedido implements Crud<Tipo_Pedido>{

    private ConexionSingleton oConexion;

    public Dao_TipoPedido(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Tipo_Pedido obj) {
        String sql = "INSERT INTO tipo_pedido VALUES(NULL,'" + obj.getDetalle() + "')";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException e) {
            Logger.getLogger(Dao_TipoPedido.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void delete(Tipo_Pedido obj) {
        String sql = "DELETE FROM tipo_pedido WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Tipo_Pedido get(int id) {
        String sql = "SELECT * FROM tipo_pedido WHERE id ='" + id + "'";
        try {
            ResultSet oResultSet = oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Tipo_Pedido(oResultSet.getInt("id"), oResultSet.getString("detalle"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Tipo_Pedido obj) {
        String sql = "UPDATE tipo_pedido SET detalle='" + obj.getDetalle() + "' WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Tipo_Pedido> getAll() {
        String sql = "SELECT * FROM tipo_pedido";
        List<Tipo_Pedido> oList = new ArrayList<>();
        try {

            ResultSet oResultSet = this.oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {
                oList.add(new Tipo_Pedido(oResultSet.getInt("id"), oResultSet.getString("detalle")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_TipoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
