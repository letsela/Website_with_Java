<%-- 
    Document   : Lecturehome
    Created on : 15 Jun 2021, 2:02:05 PM
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
        <title>Lecture Home page</title>
        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
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
                color:black;
            }
            
        </style>
    </head>
    <body>
         <div class="header">
           <a href="index.html"> <p>logo</p></a>
            <div class="menu">
                <center><p>view submission</p></center>
               
            </div>
        </div>
        <h1>VIEW SUBMISSION</h1>
        <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        
        <table border="2">
            <tr>
                <th>ID</th> <th>FILENAME</th> <th>PATH</th> <th>ADDED_DATE</th><th>STUDENT NUMBER</th> <th>DOWNLOAD HERE</th>
            </tr>
            <%
                con = DBConnection.getConnection();
                String sql = "select * from filesub";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while(rs.next()){
                
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getTimestamp(4) %></td>
                <td><%=rs.getString(5) %></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString(2)%>">Download</a></td>
            </tr>
            <%
                }
            %>
        </table>
        <br>
      
        <a href="marksupload.jsp">upload</a>
    </center>
    </body>
</html>
