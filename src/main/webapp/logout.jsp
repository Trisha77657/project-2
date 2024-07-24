<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            text-align: center;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        p {
            color: #333;
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
        }

        a:hover {
            color: #2c3e50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Session Invalidated</h1>
        <p>Your session has been successfully invalidated.</p>
        <a href="login.jsp">Login Again</a>
    </div>
</body>
</html>
