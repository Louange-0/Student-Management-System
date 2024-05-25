package net.work.registration.controller;


import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.work.registration.dao.StudentDao;
import net.work.registration.dao.UserDao;
import net.work.registration.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final UserDao userDao;
    public LoginServlet() {
        super();
        this.userDao = new UserDao();
        new StudentDao();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward the request to the login form JSP
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/loginuser.jsp");
//        dispatcher.forward(request, response);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/loginuser.jsp");
        dispatcher.forward(request, response);

    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate input fields
        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
        	request.setAttribute("error", "Invalid Credentials!");
        	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/loginuser.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Retrieve the user from the database based on email
        User user = userDao.selectUserByEmail(email);

        // Check if the user exists and the provided password matches
        if (user != null && verifyPassword(password, user.getPassword())) {
            // Set user details in session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect based on user role
            if ("admin".equalsIgnoreCase(user.getRole())) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/adminland.jsp");
                dispatcher.forward(request, response);
            } else if ("guest".equalsIgnoreCase(user.getRole())) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/welcome.jsp");
                dispatcher.forward(request, response);
            } else {
                // Redirect to login page for unknown roles
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/loginuser.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/loginuser.jsp");
            dispatcher.forward(request, response);
        }
    }

    private boolean verifyPassword(String enteredPassword, String hashedPassword) {
        // Example: Hash the entered password using SHA-256
        String hashedEnteredPassword = hashPassword(enteredPassword);

        // Compare the hashed entered password with the stored hashed password
        return hashedEnteredPassword.equals(hashedPassword);
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Error hashing the password.", e);
        }
    }
}