package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import dao.UserDAO;
import util.DBConnection;
import model.User;


public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        Connection connection = DBConnection.getConnection();
		userDAO = new UserDAO(connection);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            User user = userDAO.getUserByUsername(username,password);
            if (user != null && user.getRoleId()==1) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("index.jsp");
            } else if(user!=null&&user.getRoleId() == 2){
            	HttpSession session = request.getSession();
                session.setAttribute("user", user);
            	response.sendRedirect("adminDashboard.jsp");
            }
            else {
                response.sendRedirect("login.jsp?error=Invalid+credentials");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

}
