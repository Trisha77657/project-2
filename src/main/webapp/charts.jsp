<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Task Charts</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fafafa;
        }

        h2 {
            margin: 0 0 10px;
            color: #333;
            font-size: 18px;
        }

        input[type="submit"], a.button {
            display: inline-block;
            padding: 12px 20px;
            margin-top: 10px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover, a.button:hover {
            background-color: #3498db;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Task Charts for <%= request.getParameter("employeeName") %></h1>
        
        <form action="daily.jsp">
            <h2>See where you have spent most of your time today</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="daily">
            <input type="hidden" name="employeeName" value="<%=request.getParameter("employeeName") %>">
            <input type="submit" value="Daily Task">
        </form>
   
        <form action="weekly.jsp">
            <h2>See where you have spent most of your time this week</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="weekly">
            <input type="hidden" name="employeeName" value="<%=request.getParameter("employeeName") %>">
            <input type="submit" value="Weekly Task">
        </form>
        
        <form action="monthly.jsp">
            <h2>See where you have spent most of your time this month</h2>
            <input type="hidden" name="action" value="viewCharts">
            <input type="hidden" name="type" value="monthly">
            <input type="hidden" name="employeeName" value="<%=request.getParameter("employeeName") %>">
            <input type="submit" value="Monthly Task">
        </form>
    
        <a href="index.jsp" class="button">Back</a>
    </div>
</body>
</html>
