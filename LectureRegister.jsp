<%-- 
    Document   : LectureRegister
    Created on : 15 Jun 2021, 1:01:29 PM
    Author     : Lebalang Letse'la
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecture Registration Page</title>
          <style>
            h1{
                text-align: center;
                color: blue;
                
            }
            form{
                width: 250px;
                height: 500px;
                padding: 20px;
                align-items: center;
                background-color: blueviolet;
                box-shadow: 50%;
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
                <a href="LectureLogin.jsp">Lecture Login</a>
            </div>
        </div>
            <div class="image">
                <img src="" alt="" />
            </div>
        
        <div class="head">
            <h1>The Lecture Registration</h1>
        </div>
        <div class="continer">
            <form action="InsertDataServlet" method="POST">
                <label>Lecture Name</label>
                <input type="text" required="" name="lname" />
                <label>Lecture Number</label>
                <input type="text" required="" name="lnumber" />
                <label>Email</label>
                <input type="text" required="" name="lemail" /> 
                <label>Phone Number</label>
                <input type="text" required="" name="lphone" />
                <label>Password</label>
                <input type="text" required="" name="lpass" />
                
                <input type="submit" name="action" value="SignIn" />
            </form>
        </div>
    </body>

</html>
