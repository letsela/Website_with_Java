<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <a href="Login.jsp">Student Login</a>

            </div>
        </div>
            <div class="image">
                <img src="" alt="" />
            </div>
        
        <div class="head">
            <h1>The Student Registration</h1>
        </div>
        <div class="continer">
            <form action="InsertData" method="POST">
                <label>Student Name</label>
                <input type="text" required="" name="sname" />
                <label>Student Number</label>
                <input type="text" required="" name="snumber" />
                <label>Email</label>
                <input type="text" required="" name="email" /> 
                <label>Phone Number</label>
                <input type="text" required="" name="phone" />
                <label>Password</label>
                <input type="text" required="" name="pass" />
                
                <input type="submit" name="action" value="SignIn" />
            </form>
        </div>
    </body>
</html>
