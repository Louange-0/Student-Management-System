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
import net.work.registration.util.PasswordHashUtil;

@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;  // Declare userDao object

    @Override
	public void init() {
        userDao = new UserDao();  // Initialize userDao in the init method
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Add logic to fetch users and forward to updateUser.jsp
        List<User> users = userDao.selectAllUsers();
        request.setAttribute("users", users);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/updateUser.jsp");
        dispatcher.forward(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user details from the edit form
        int userId = Integer.parseInt(request.getParameter("userId"));
        String updatedUsername = request.getParameter("username");
        String updatedEmail = request.getParameter("email");
        String updatedPassword = request.getParameter("password");
        String updatedRole = request.getParameter("role");

        // Fetch user details based on userId
        User user = userDao.getUserById(userId);

        // Set user as an attribute in the request
        request.setAttribute("user", user);

        // Update only non-null and non-empty fields
        if (updatedUsername != null && !updatedUsername.isEmpty()) {
            user.setUsername(updatedUsername);
        }
        if (updatedEmail != null && !updatedEmail.isEmpty()) {
            user.setEmail(updatedEmail);
        }
        if (updatedPassword != null && !updatedPassword.isEmpty()) {
            // Hash the updated password before storing it
            String hashedPassword = PasswordHashUtil.hashPassword(updatedPassword);
            user.setPassword(hashedPassword);
        }
        if (updatedRole != null && !updatedRole.isEmpty()) {
            user.setRole(updatedRole);
        }

        // Update the user in the database
        userDao.updateUser(user);

        // Forward to the page where you can update the details of that user
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/editUser.jsp");
        dispatcher.forward(request, response);
    }
}

