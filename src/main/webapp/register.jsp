<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Register</h1>
    <form action="RegisterServlet" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <button type="submit">Register</button>
    </form>
</body>
</html>
 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 20px; /* Added padding for spacing */
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px; /* Added margin bottom for spacing */
        }

        form {
            background-color: white;
            padding: 30px; /* Increased padding for better spacing */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            text-align: center;
            max-width: 400px; /* Added max-width for better form alignment */
            width: 100%; /* Ensures form takes full width of container */
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensures padding is included in width */
        }

        button {
            padding: 10px 20px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px; /* Increased font size for better readability */
            margin-top: 10px; /* Added margin top for spacing */
        }

        button:hover {
            background-color: #2c3e50;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Register</h1>
    <form action="RegisterServlet" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br>
        <button type="submit">Register</button>
    </form>
    
    <% 
        String errorMessage = request.getParameter("error");
        if (errorMessage != null) {
    %>
        <p class="error-message"><%= errorMessage %></p>
    <% 
        }
    %>
</body>
</html>
 