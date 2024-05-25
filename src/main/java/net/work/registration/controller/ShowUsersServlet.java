package net.work.registration.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.work.registration.dao.UserDao;
import net.work.registration.model.User;

@WebServlet("/showUsers")
public class ShowUsersServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final UserDao userDao;

    public ShowUsersServlet() {
        super();
        this.userDao = new UserDao();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the list of all users
        List<User> allUsers = userDao.selectAllUsers();

        // Set the list of users as an attribute in the request
        request.setAttribute("users", allUsers);

        // Forward to the showUsers.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/allUsers.jsp");
        dispatcher.forward(request, response);
    }
}
