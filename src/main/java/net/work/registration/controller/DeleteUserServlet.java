package net.work.registration.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.work.registration.dao.UserDao;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;  // Declare userDao object

    @Override
	public void init() {
        userDao = new UserDao();  // Initialize userDao in the init method
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user details from the form
        int userId = Integer.parseInt(request.getParameter("userId"));

        // Delete the user from the database
        userDao.deleteUser(userId);

        // Redirect back to the page that displays the users
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/deletion-success.jsp");
        dispatcher.forward(request, response);
    }
}