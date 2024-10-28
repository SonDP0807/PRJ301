<%-- 
    Document   : admin
    Created on : 13 thg 10, 2024, 20:14:23
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/admin.css">
        <title>Admin Page</title>
        <style>
            #content {
                margin-top: 20px;
            }
        </style>

    </head>
    <body> 
        <h1 style="color: red">Welcome to admin page</h1> 
        <a class="nav-link" href="index.html" 
           style="font-size: 25px; font-weight: 500;">Log Out</a>
        <nav class="navbar">
            <ul>
                <li><a href="getDish"">Dish Manager</a></li>
                <li><a href="getStaff">Staff Manager</a></li>
                <li><a href="getTable">Table Manager</a></li>
            </ul>
        </nav>


    
    </body>
   
    
</html>


