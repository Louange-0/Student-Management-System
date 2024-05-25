<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="net.work.registration.model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        form {
            display: inline;
        }

        .back-link {
            margin-top: 20px;
            text-align: center;
        }

        .back-link a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            padding: 8px 12px;
            border: 1px solid #3498db;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .back-link a:hover {
            background-color: #3498db;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>All Users</h1>

    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Back to Home link -->
    <div class="back-link">
        <p><a href="javascript:history.back()">Back to Home</a></p>
    </div>
</body>
</html>
