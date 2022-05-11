<%-- 
    Document   : studentsDetails
    Created on : 10 May, 2022, 5:11:22 PM
    Author     : Shubham Sagar
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Students Details</title>
    </head>
    <body>
    <div class="container">
         <h2>STUDENTS CLASS TIMING DETAILS</h2>
           <p>This is Students Details by class time you can find class time here.</p>
             <table class="table">
            <thead>
             <tr>
              <th>ID</th>
              <th>NAME</th>
              <th>ROLL NO</th>
              <th>EMAIL</th>
              <th>ENTRY TIME</th>
              <th>LEAVING TIME </th>
              <th>ENTRY DETAILS</th>
             </tr>
            </thead>
        <% 
        
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        

      
       try{
           Class.forName("com.mysql.jdbc.Driver");
            
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
                 
                 String q="select * from students";
                 
                 st = con.createStatement();
                 rs=st.executeQuery(q);
                 
                 
                 while(rs.next()){
                     
                    
                     %>
                     <tbody>
                     <tr class="success">
                         <td class="warning"><%= rs.getString(1) %></td>
                         <td class="danger"><%= rs.getString(2) %></td>
                           <td class="active"><%= rs.getString(3) %></td>
                            <td class="info"><%= rs.getString(4) %></td>
                            <td class="info"><%= rs.getString(5) %></td>
                            <td class="info"><%= rs.getString(6) %></td>
                            <td><%= rs.getString(7) %></td>
                             
                   </tr>      
                     <%
                 }
                 
       }
       
       catch(Exception e){
           e.printStackTrace();
           out.print("<h1>this is Student Details</h1>");
       }
        
        
        
        
        %>
        </tbody>
  </table>
</div>
    </body>
</html>
