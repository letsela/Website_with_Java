<%-- 
    Document   : Studentmark
    Created on : 24 Jun 2021, 5:07:42 PM
    Author     : Lebalang Letse'la
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <style>
             h1{
                text-align: center;
                color: blue;
                
            }
            form{
                width: 250px;
                height: 250px;
                padding: 20px;
                align-items: center;
                background-color: blueviolet;
                box-shadow: 50px;
                text-align: center;
                transform: translate(180%, 0);
            }
            input{
                width: 100%;
                display: inline-block;
                margin: 20px 0;
                font-size: 20px;
            }
            label{
                color: white;
                font-weight: bold;
                font-size: 20px;
            }
            .header{
              display:flex;
              align-items: center;
              justify-content: space-between;
              background-color: black;
              color: white;
              padding: 10px 20px;
            }
            .menu{
                display:flex;
              align-items: center;
              justify-content: space-between;
                
            }
            a{
                margin-right: 10px;
                text-decoration: none;
                color: white;
            }
        </style>
    </head>
    <body>
                
        <div class="header">
           <a href="index.html"> <p>logo</p> </a>
            <div class="menu">
                <a href="StudentRegister.jsp">Student</a>
               
            </div>
        </div>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        
        <%
                con = DBConnection.getConnection();
                String sql = "select * from marks";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while(rs.next()){
                
         %>
        <h3>Your score is:</h3>
        <h3><%=rs.getString(2)%></h3>
        
        <%
            }
        %>
        
    </body>
</html>
