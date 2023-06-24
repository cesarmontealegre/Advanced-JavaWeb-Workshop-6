package co.edu.sena.project2687350cesarmontealegre.connectionTest;

import java.sql.*;

public class BasicConnectionSingleton {

    private static String url = "jdbc:mysql://localhost:3306/db_Myapp?serverTimezone=America/Bogota";
    private static String user = "root";
    private static String pass = "";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user, pass);
        }
        return conn;
    }
} // BasicConnectionSingleton