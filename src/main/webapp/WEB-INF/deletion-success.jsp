<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deletion Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        .success-message {
            color: #2ecc71; /* Green color for success */
            margin-top: 20px;
            text-align: center;
        }

        .go-back-link {
            margin-top: 20px;
            text-align: center;
        }

        .go-back-link a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            padding: 8px 12px;
            border: 1px solid #3498db;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .go-back-link a:hover {
            background-color: #3498db;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Deletion Success</h1>

    <div class="success-message">
        <p>The user has been successfully deleted.</p>
    </div>

    <!-- Go Back link -->
    <div class="go-back-link">
        <p><a href="javascript:history.back()">Go Back</a></p>
    </div>
</body>
</html>
