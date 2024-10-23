<%-- 
    Document   : cashierProcess
    Created on : 22 thg 10, 2024, 11:05:42
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Order Details for Table ${param.tableID}</h1>
        <table border="1" width="60%">
            <thead>
                <tr>
                    <th>Dish Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <td>Total Amount</td>
                    <th>Status</th>
                    <th>Confirm</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="o" items="${requestScope.list}">
                    <tr>
                        <td>${o.dishName}</td>
                        <td>${o.quantity}</td>
                        <td>${o.price}</td>
                        <td>${o.price * o.quantity}</td>
                        <td>${o.status}</td>
                        <td><a href="#">confirm</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </center>
</body>
</html>
