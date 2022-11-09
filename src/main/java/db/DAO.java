/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pedido;
import model.Usuario;

/**
 *
 * @author jr972
 */
public class DAO {

    private ConexionSingleton oCon;

    public DAO(ConexionSingleton oCon) {
        this.oCon = oCon;
    }

    public Object isExist(Usuario oUsuario){
        String sql = "SELECT * FROM persona_entidad INNER JOIN usuario ON usuario.id=persona_entidad.id WHERE persona_entidad.rut='"+oUsuario.getRut()+"' AND usuario.clave=sha2('"+oUsuario.getClave()+"',0);";
        try {
            ResultSet oResultSet = oCon.getConnection().createStatement().executeQuery(sql);
            if(oResultSet.next()){
                return new Usuario(oResultSet.getInt("id"), oResultSet.getString("correo"), oResultSet.getInt("telefono"), oResultSet.getString("clave"), oResultSet.getInt("tipo_user"), 
                        oResultSet.getInt("cargo"), oResultSet.getInt("area"),
                        oResultSet.getInt("id"),oResultSet.getString("rut"), oResultSet.getString("nombre"),oResultSet.getString("apellido"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null;
    }
    
    public List<Pedido> getPedidos(){
        String sql="Select * from view_pedido";
        List<Pedido> oList=new ArrayList<>();
        try {
            ResultSet oResultSet=oCon.getConnection().createStatement().executeQuery(sql);
            while(oResultSet.next()){
                oList.add(new Pedido(oResultSet.getInt("id"), oResultSet.getString("Cliente"), oResultSet.getDate("Fecha"), oResultSet.getTime("Hora"), oResultSet.getString("Tipo Pedido")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oList;
    }
    
}
