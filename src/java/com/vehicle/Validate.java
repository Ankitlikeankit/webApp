/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vehicle;

/**
 *
 * @author Ankit Singh
 */
import java.sql.*;

public class Validate
 {
     public static boolean checkUser(String email,String pass) 
     {
    
      boolean st =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","");
         PreparedStatement ps =con.prepareStatement("select name,password from register where name= ? and password=?");
         ps.setString(1,email);
         ps.setString(2,pass);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }
     public static boolean checkadmin(String email,String pass) 
     {
    
      boolean st =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","");
         PreparedStatement ps =con.prepareStatement("select email,password from admin where email= ? and password=?");
         ps.setString(1,email);
         ps.setString(2,pass);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }
}