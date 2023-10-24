<%-- 
    Document   : Login
    Created on : 10 Jun 2021, 6:53:03 PM
    Author     : Lebalang Letse'la
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
                <a href="StudentRegister.jsp">Student Register</a>
               
            </div>
        </div>
         
        <div class="head">
            <h1>Login</h1>
        </div>
        <div class="continer">
            <form action="LoginServlet" method="POST">
                <label>Email</label>
                <input type="text" required="" name="email1" /> 
                <label>Password</label>
                <input type="text" required="" name="pass1" />
                <input type="submit" name="action" value="Login" />
            </form>
            <a href="studentRegistration.jsp"> DONT HAVE AN ACCOUNT </a>
        </div>
        
       
    </body>
</html>
