<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration Form</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 50%;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        margin-top: 50px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
    }

    table tr {
        margin-bottom: 15px;
    }

    table td {
        padding: 10px;
        text-align: left;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"],
    input[type="email"],
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #3498db;
        color: white;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #2980b9;
    }

    p {
        text-align: center;
        margin-top: 20px;
    }

    a {
        color: #3498db;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>
    <div class="container">
        <h1>Student Registration Form</h1>
        <form action="<%= request.getContextPath() %>/studentregister" method="post">
            <table>
                <tr>
                    <td>Code</td>
                    <td><input type="number" name="code" /></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>School</td>
                    <td><input type="text" name="school" /></td>
                </tr>
                <tr>
                    <td>Dob</td>
                    <td><input type="date" name="dob" /></td>
                </tr>
                <tr>
    <td>Email</td>
    <td><input type="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address" required /></td>
</tr>

                <tr>
    <td>Mobile</td>
    <td><input type="text" name="mobile" pattern="[0-9]{10}" title="Please enter a 10-digit number" placeholder="xxxx-xxx-xxx" /></td>
</tr>

            </table>
            <input type="submit" value="Submit" />
            <p><a href="javascript:history.back()">Back to Home</a></p>
        </form>
        
    </div>
</body>
</html>
