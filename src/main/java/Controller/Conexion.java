package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
//    public Connection crearConexion(){
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/ProyectoEDyA2?autoReconnect=true&useSSL=FALSE";
//            String usuario = "root";
//            String pass = "masterkey";
//            Connection conexion = DriverManager.getConnection(url, usuario, pass);
//            return conexion;
//        } catch (SQLException | ClassNotFoundException es){
//            System.out.println("Error: " + es.toString());
//            return null;
//        }
//        
//    }
    
    public DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/ProyectoEDyA2?autoReconnect=true&useSSL=FALSE");
        dataSource.setUsername("root");
        dataSource.setPassword("masterkey");
        
        return dataSource;
    }
}