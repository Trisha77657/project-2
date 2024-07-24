<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="ChartServlet?action=viewCharts&type=monthly&employeeName=<%= request.getParameter("employeeName") %>" alt="Monthly Bar Chart" />
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Monthly Bar Chart</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 20px; /* Added padding for better spacing */
        }

        .chart-container {
            max-width: 800px; /* Adjusted max-width for better image sizing */
            width: 100%;
            background-color: white;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden; /* Added overflow hidden to contain shadow */
        }

        img {
            max-width: 100%;
            height: auto;
            display: block; /* Ensures image doesn't add extra space */
            margin: auto; /* Centers image horizontally */
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .back-link {
            margin-top: 20px;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: #2c3e50;
        }
    </style>
</head>
<body>
    <h1>Monthly Bar Chart</h1>
    <div class="chart-container">
        <img src="ChartServlet?action=viewCharts&type=monthly&employeeName=<%= request.getParameter("employeeName") %>" alt="Monthly Bar Chart" />
    </div>
    <a href="index.jsp" class="back-link">Back to Dashboard</a>
</body>
</html>
