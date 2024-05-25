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
    </style>
</head>
<body>
    <h1>All Users</h1>

    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <!-- Removed <th>Password</th> -->
                <th>Role</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <!-- Removed <td>${user.password}</td> -->
                    <td>${user.role}</td>
                    <td>
                        <form action="<%= request.getContextPath() %>/updateUser" method="post">
                            <input type="hidden" name="userId" value="${user.id}">
                            <input type="hidden" name="username" value="${user.username}">
                            <input type="hidden" name="email" value="${user.email}">
                            <!-- Removed <input type="hidden" name="password" value="${user.password}"> -->
                            <input type="hidden" name="role" value="${user.role}">
                            <button type="submit" name="action" value="update">Update</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
