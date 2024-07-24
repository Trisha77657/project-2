<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="util.DBConnection" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || user.getRoleId() != 2) { // Assuming 2 is the Admin role
        response.sendRedirect("adminLogin.jsp");
        return;
    }

    UserDAO userDAO = new UserDAO(DBConnection.getConnection());
    List<User> employees = userDAO.getAllEmployees();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #2c3e50;
            text-align: center;
        }

        h3 {
            color: #2c3e50;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2980b9;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a {
            text-decoration: none;
            color: #2980b9;
            display: inline-block;
            padding: 5px 10px;
            border: 1px solid #2980b9;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #2980b9;
            color: white;
        }

        form {
            margin-top: 20px;
            text-align: center;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <h2>Welcome, Admin</h2>
    <h3>All Employees</h3>
    <table>
        <tr>
            <th>Employee Name</th>
            <th>Role</th>
            <th>Action</th>
        </tr>
        <%
            for (User employee : employees) {
        %>
        <tr>
            <td><%= employee.getUsername() %></td>
            <td><%= employee.getRoleId() == 1 ? "Associate" : "Admin" %></td>
            <td><a href="viewEmployeeTasks.jsp?employeeName=<%= employee.getUsername() %>">View Tasks</a></td>
        </tr>
        <%
            }
        %>
    </table>
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
