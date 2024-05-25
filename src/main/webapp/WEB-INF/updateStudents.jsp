<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px 0;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        .update-button, .delete-button {
            background-color: #3498db;
            color: #fff;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .delete-button {
            background-color: #e74c3c; /* Red color */
        }

        .update-button:hover, .delete-button:hover {
            background-color: #2980b9;
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
    <h1>Update Students</h1>

    <table>
        <thead>
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>School</th>
                <th>Date of Birth</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.code}</td>
                    <td>${student.name}</td>
                    <td>${student.age}</td>
                    <td>${student.school}</td>
                    <td>${student.dob}</td>
                    <td>${student.email}</td>
                    <td>${student.mobile}</td>
                    <td>
                        <form action="updateStudent" method="post" style="display: inline;">
                            <input type="hidden" name="code" value="${student.code}">
                            <button type="submit" class="update-button">Update</button>
                        </form>
                        
                        <form action="deleteStudent" method="post" style="display: inline; margin-left: 5px;">
                            <input type="hidden" name="code" value="${student.code}">
                            <button type="submit" class="delete-button">Delete</button>
                        </form>
                    </td>
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
