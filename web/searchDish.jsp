<%-- 
    Document   : searchDish
    Created on : Oct 22, 2024, 11:17:05 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/search.css">
        <title>Search Dish</title>
    </head>
    <body>
        <h1>Kết quả tìm kiếm cho: ${param.query}</h1>
        <a href="dish?tableID=${tableID}"style="font-size: 25px; font-weight: 500;">Menu</a>
            <%
            String tableID = (String) session.getAttribute("tableID");
            %> 
            <h2>Bạn đang đặt món cho bàn số: <%= tableID %></h2>
            <c:choose>
                <c:when test="${empty searchResults}">
                    <p>Không tìm thấy món ăn nào.</p>
                </c:when>
                <c:otherwise> 
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Mã món</th>
                                <th>Tên món</th>
                                <th>Giá</th>
                                <th>Trạng thái</th>
                                <th>Hình ảnh</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="dish" items="${searchResults}">
                                <tr>
                                    <td>${dish.dishId}</td>
                                    <td>${dish.dishName}</td>
                                    <td>${dish.price}</td>
                                    <td>${dish.status}</td>
                                    <td><img src="${dish.image}" alt="Hình ảnh" width="100"></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
    </body>
</html>
