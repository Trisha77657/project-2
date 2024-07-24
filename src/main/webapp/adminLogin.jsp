<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            text-align: left;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2c3e50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="AuthServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
