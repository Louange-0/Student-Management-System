<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Registration Response</title>
    <style>
        body {
            font-family: 'Verdana', sans-serif;
            background-color: #e6e6e6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            color: #444;
            text-transform: uppercase;
        }

        table {
            border-collapse: collapse;
            width: auto; /* Adjusted to 'auto' for dynamic width */
            margin: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
            font-size: 14px;
        }

        th {
            background-color: #f2f2f2;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        p a {
            color: #3498db;
            text-decoration: none;
            display: inline-block;
            padding: 10px 20px;
            border-radius: 6px;
            background-color: #3498db;
            color: #fff;
            transition: background-color 0.3s ease;
        }

        p a:hover {
            background-color: #217dbb;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div>
        <h1>Student Registration Response</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Age</th>
                <th>School</th>
                <th>Email</th>
                <th>Mobile</th>
            </tr>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.code}</td>
                    <td>${student.name}</td>
                    <td>${student.age}</td>
                    <td>${student.school}</td> 
                    <td>${student.email}</td>
                    <td>${student.mobile}</td>
                </tr>
            </c:forEach>
        </table>
        <p><a href="javascript:history.back()">Back</a></p>
    </div>
</body>
</html>

