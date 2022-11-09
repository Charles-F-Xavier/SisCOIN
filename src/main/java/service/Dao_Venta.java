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
import model.Venta;

/**
 *
 * @author jr972
 */
public class Dao_Venta implements Crud<Venta>{

    private ConexionSingleton oConexion;

    public Dao_Venta(ConexionSingleton oConexion) {
        this.oConexion = oConexion;
    }

    @Override
    public void insert(Venta obj) {
        String sql = "INSERT INTO tipo_pedido VALUES(NULL," + obj.getId_detalle()+ ", "+obj.getId_factura()+", "+obj.getId_usuario()+", "+obj.getId_pedido()+")";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException e) {
            Logger.getLogger(Dao_Venta.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void delete(Venta obj) {
        String sql = "DELETE FROM tipo_pedido WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Venta get(int id) {
        String sql = "SELECT * FROM tipo_pedido WHERE id ='" + id + "'";
        try {
            ResultSet oResultSet = oConexion.getConnection().createStatement().executeQuery(sql);
            if (oResultSet.next()) {
                return new Venta(oResultSet.getInt("id"), oResultSet.getInt("id_detalle"), oResultSet.getInt("id_factura"), oResultSet.getInt("id_user"), oResultSet.getInt("id_pedido"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(Venta obj) {
        String sql = "UPDATE tipo_pedido SET id_tipo_pedido='" + obj.getId_pedido()+ "' WHERE id = '" + obj.getId() + "'";
        try {
            oConexion.getConnection().createStatement().execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Venta> getAll() {
        String sql = "SELECT * FROM tipo_pedido";
        List<Venta> oList = new ArrayList<>();
        try {

            ResultSet oResultSet = this.oConexion.getConnection().createStatement().executeQuery(sql);
            while (oResultSet.next()) {
                oList.add(new Venta(oResultSet.getInt("id"), oResultSet.getInt("id_detalle"), oResultSet.getInt("id_factura"), oResultSet.getInt("id_user"), oResultSet.getInt("id_pedido")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao_Venta.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
