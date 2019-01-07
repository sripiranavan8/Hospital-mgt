/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBCONNECT;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

/**
 *
 * @author pc
 */
public class DBconnect {
      
 public static Connection connect(){
     Connection con =null;
        try{
        Class.forName("com.mysql.jdbc.Driver");
         con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/mofie","root","");
         return con;
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
            return null;
        }
    }
}
