<%-- 
    Document   : SubmitSuccess
    Created on : 19 Jun 2021, 3:54:10 PM
    Author     : Lebalang Letse'la
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.StudentBean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Success Page</title>
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
            <p>logo</p>
            <div class="menu">
                <a href="Login.jsp">Student</a>
                
            </div>
        </div>
        <h4>successfully submitted your work!!!!!</h4>
        
        <%--
    <center>
        <c:if test="${requestScope.text != null}">
            <h3><c:out value="${requestScope.text}"></c:out></h3>
        </c:if><br><br>
        <c:if test="${sessionScope.fileName != null}">
            <c:set var="filename" scope="session" value="${sessionScope.fileName}"/>          
        </c:if>
       
    </center>
        --%>
    </body>
</html>
