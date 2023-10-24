<%-- 
    Document   : logged
    Created on : 13 Jun 2021, 12:35:27 PM
    Author     : Lebalang Letse'la
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logged Page</title>
        <style>
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
        </style>
    </head>
    <body>
        <h1>WRONG INPUT OF USER DETAILS</h1>
        <div class="continer">
            <form action="LoginServlet" method="POST">
                <label>Email</label>
                <input type="text" required="" name="email1" /> 
                <label>Password</label>
                <input type="text" required="" name="pass1" />
                <input type="submit" name="action" value="Login" />
            </form>
            
        </div>
    </body>
</html>
