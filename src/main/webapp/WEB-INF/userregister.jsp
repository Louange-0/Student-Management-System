<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        body {
            font-family: 'Verdana', sans-serif;
            background-color: #e6e6e6;
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #444;
            text-transform: uppercase;
        }

        form {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 100%;
            box-sizing: border-box;
            margin: auto;
        }

        label {
            display: block;
            margin-bottom: 15px;
            color: #555;
            font-size: 14px;
        }

        input {
            width: 100%;
            padding: 15px;
            margin-bottom: 25px;
            box-sizing: border-box;
            border: 2px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input:focus {
            border-color: #6b5b95;
        }

        button {
            background-color: #6b5b95;
            color: #fff;
            padding: 15px 25px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            display: block;
            margin: 0 auto; /* Center the button */
        }

        button:hover {
            background-color: #4a3b6a;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        p a {
            color: #3498db;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>User Registration Form</h2>
    <form action="register" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        
         <label for="password">Role:</label>
        <input type="text" id="role" name="role" required>
        
        <button type="submit">Register</button>
        <p>or you can <a href="http://localhost:8080/Student-Register-Work/login">Login</a></p>
    </form>
    
</body>
</html>
