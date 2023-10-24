<%-- 
    Document   : Studenthome
    Created on : 13 Jun 2021, 2:16:19 PM
    Author     : Lebalang Letse'la
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>submission Page</title>
        <style>
            h1{
                text-align: center;
                color: blue;
                
            }
            form{
                width: 250px;
                height: 350px;
                padding: 20px;
                align-items: center;
                background-color: blueviolet;
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
           <a href="index.html"> <p>logo</p></a>
            <div class="menu">
                <center><p>student submission</p></center>
               
            </div>
        </div>
         
        <div class="continer">
            <form action="SubmitServlet" method="POST" enctype="multipart/form-data" >
            <label>Student Number</label>
            <input type="text" required="" name="snum" />
            <label>File Name</label>
            <input type="file" required="" name="filename" />
            
            <input type="submit" name="kwete" value="Submit" />
            </form>
            <form action="Viewmarks" method="POST" >
                <label>Student Number</label>
            <input type="text" required="" name="snum" />
            
            <input type="submit" name="action" value="view marks"/>
            </form>
        </div>
    </body>
</html>
