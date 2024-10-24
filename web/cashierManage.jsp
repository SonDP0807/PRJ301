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
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <title>JSP Page</title>
        <style>
            body {
                background-color: #f7f9fc;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            h2 {
                color: #343a40;
                font-weight: bold;
                letter-spacing: 2px;
            }

            .card {
                border-radius: 10px;
                overflow: hidden;
            }

            .table th, .table td {
                vertical-align: middle;
            }

            .table th {
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .table-hover tbody tr:hover {
                background-color: #e9ecef;
            }

            .card-footer h5 {
                color: #28a745;
            }

            .btn-lg {
                padding: 0.8rem 2rem;
            }

            .btn-outline-primary {
                color: #007bff;
                border-color: #007bff;
            }

            .btn-outline-primary:hover {
                background-color: #007bff;
                color: white;
            }

            a {
                text-decoration: none;
            }

        </style>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="text-uppercase">Order Summary</h2>
                    <p class="lead">Here is the list of dishes for table <strong>${param.tableID}</strong></p>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card shadow-sm">
                        <div class="card-header bg-dark text-white">
                            <h5 class="mb-0">Order Details</h5>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-hover table-striped">
                                <thead class="thead-dark">
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
                                    <c:set var="sum" value="0"></c:set>
                                    <c:forEach var="o" items="${requestScope.list}">
                                        <tr>
                                            <td>${o.dishName}</td>
                                            <td>${o.quantity}</td>
                                            <td>${o.price}</td>
                                            <td>${o.price * o.quantity}</td>
                                            <td>${o.status}</td>
                                            <c:if test="${o.status == 'Served'}">
                                                <c:set var="sum" value="${sum + (o.price * o.quantity)}" />
                                            </c:if>
                                            <td><a href="#" class="btn btn-outline-primary">confirm</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-right">
                            <h5>Total Amount: ${sum}</h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-12 text-center">
                    <a href="cashier" class="btn btn-outline-primary btn-lg">Back to Tables</a>
                    <a href="cashier" class="btn btn-outline-primary btn-lg">Pay</a>
                </div>
            </div>
        </div>

        <!-- Include Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
