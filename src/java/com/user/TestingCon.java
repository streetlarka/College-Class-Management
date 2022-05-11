/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Shubham Sagar
 */
public class TestingCon {
    public static void main(String args[]) throws SQLException, ClassNotFoundException {
     
        //  DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            String mysqlUrl = "jdbc:mysql://localhost:3306/test";
            Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
            String q="select * from students";

            Statement st= con.createStatement();

            ResultSet rs=null;


            rs=st.executeQuery(q);

            while(rs.next()){

               System.out.println("rsult"+rs.getString(1));
            }

            System.out.println("Connection established: "+con);
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("Connection established Not ");
        }
   }
}
