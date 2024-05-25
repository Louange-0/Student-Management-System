<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
    <style>
        body {
            font-family: 'Helvetica', Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #333;
            text-transform: uppercase;
        }

        form {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 100%;
            margin:auto;
            box-sizing: border-box;
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
            border-color: #3498db;
        }

        button {
            background-color: #3498db;
            color: #fff;
            padding: 15px 25px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
 
    <h2>User Login</h2>
    <form action="login" method="post">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br>
        
        <button type="submit">Login</button>
       
    </form>
</body>
</html>
