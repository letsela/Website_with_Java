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
            <p>logo</p>
            <div class="menu">
                
                <a href="LectureLogin.jsp">Lecture</a>
            </div>
        </div>
        
        <center>
            <h1>ADD STUDENT MARKS</h1>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        
        <form action="MarkServlet" method="POST">
        <table border="2">
            <tr>
                 <th>STUDENT NUMBER</th> <th>VERIFY STUDENT NUMBER</th><th>ENTER MARKS</th> 
            </tr>
           <%
                con = DBConnection.getConnection();
                String sql = "select * from filesub";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while(rs.next()){
                
            %>
            <tr>
               <td><%=rs.getString(5)%></td>
               <td><input type="text"  name="vnum" /></td>
               <td><input type="text"  name="mark" /></td>
            </tr>
            <%
                }
            %>
        </table>
        <input type="submit" name="action" value="ADD MARKS" />
        </form>
        <br>
        
    </center>
    </body>
</html>
