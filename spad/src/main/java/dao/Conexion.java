package dao;

import java.sql.*;

public class Conexion {
    Connection con;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spad","root","");  
            //Preguntar si podemos linquear 2 BD
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
}
