
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session==null||session.getAttribute("user")==null){
    response.sendRedirect("home.jsp");
    return;
}
%>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Task Tracker</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            max-width: 600px;
            width: 100%;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        form, a {
            margin: 10px 0;
            display: inline-block;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #2c3e50;
        }

        input[type="submit"] {
            padding: 12px 24px;
            border: none;
            background-color: #2980b9;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2c3e50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, <%= user.getUsername() %>!</h1>
        <form action="addTask.jsp" method="post">
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add Task">
        </form>
        
        <a href="TaskServlet?employeeName=<%= user.getUsername() %>">View Tasks</a>
        <a href="charts.jsp?employeeName=<%= user.getUsername() %>">View Charts</a>
        
        <form action="logout.jsp" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
  