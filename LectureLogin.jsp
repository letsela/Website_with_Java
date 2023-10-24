<%-- 
    Document   : LectureLogin
    Created on : 15 Jun 2021, 12:56:43 PM
    Author     : Lebalang Letse'la
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecture Login Page</title>
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
                <a href="LectureRegister.jsp">Lecture Register</a>
               
            </div>
        </div>
        <div class="head">
            <h1>Lecture Login</h1>
        </div>
        <div class="continer">
            <form action="LecLoginServlet" method="POST">
                <label>Email</label>
                <input type="text" required="" name="lemail1" /> 
                <label>Password</label>
                <input type="text" required="" name="lpass1" />
                <input type="submit" name="action" value="Login" />
            </form>
            
        </div>
        
       
    </body>
</html>
