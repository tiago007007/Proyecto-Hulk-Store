package coneccion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author TIAGO
 */
import java.sql.*;
public class connMySql {
    Connection conectar = null;
    public Connection conectar(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conectar = DriverManager.getConnection("jdbc:mysql://localhost:3306/hulkstore" ,"root","");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Error"+e.getMessage());
        }
        return conectar;
    }
}
