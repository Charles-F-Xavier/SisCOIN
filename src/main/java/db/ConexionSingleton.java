/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author jr972
 */
public class ConexionSingleton {

    private static ConexionSingleton instance;
    private Connection oConnection;

    private ConexionSingleton() {

        String url = String.format("jdbc:mysql://localhost:3306/local_ch");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            oConnection = DriverManager.getConnection(url, "root", "");
            System.out.println("Conexion exitosa");
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
            System.out.println("Fallaste como ingeniero");
        }
    }

    public static ConexionSingleton getIntance() {
        if (instance == null) {
            instance = new ConexionSingleton();
        }
        return instance;
    }

    public Connection getConnection() {
        return oConnection;
    }

}
