<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ecf0f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        main {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .function {
            background-color: #ffffff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            width: 300px;
            margin: 20px;
        }

        h1 {
            color: #3498db;
            margin-bottom: 20px;
        }

        h3 {
            color: #555;
            margin-bottom: 15px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        li {
            margin-bottom: 15px;
        }

        a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #2980b9;
        }

        .logout-button {
            margin-top: 30px;
            background-color: #e74c3c;
            color: #fff;
            padding: 15px 25px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .logout-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <main>
       

        <div class="function">
            <h3>Register a new student</h3>
            <a href="studentregister">Go to Student Registration</a>
        </div>

        <div class="function">
            <h3>Show all users</h3>
            <a href="showUsers">View All Users</a>
        </div>

        <div class="function">
            <h3>Show all students</h3>
            <a href="students">View All Students</a>
        </div>
        
          <div class="function">
            <h3>Update Users</h3>
            <a href="updateUser">Update Users</a>
        </div>

        <div class="function">
            <h3>Update Students</h3>
            <a href="updateStudent">Update Students</a>
        </div>
    </main>

    <button class="logout-button" onclick="location.href='logout'">Logout</button>
</body>
</html>
