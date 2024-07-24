<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Task Management</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h2 {
            background-color: #2980b9;
            color: white;
            padding: 20px;
            text-align: center;
            margin: 0;
            width: 100%;
            box-sizing: border-box;
        }

        .sections-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            max-width: 800px;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
        }

        .section {
            background-color: white;
            padding: 20px;
            width: 100%;
            max-width: 350px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h3 {
            color: #2c3e50;
            margin-top: 0;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            margin: 10px 0;
        }

        a {
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #2c3e50;
        }
    </style>
</head>
<body>
    <h2>Welcome to the Employee Task Management System</h2>
    
    <div class="sections-container">
        <div class="section">
            <h3>Admin Section</h3>
            <ul>
                <li><a href="adminLogin.jsp">Admin Login</a></li>
            </ul>
        </div>

        <div class="section">
            <h3>User Section</h3>
            <ul>
                <li><a href="login.jsp">User Login</a></li>
                <li><a href="register.jsp">User Registration</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
