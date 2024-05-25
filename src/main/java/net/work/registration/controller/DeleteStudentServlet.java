package net.work.registration.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.work.registration.dao.StudentDao;

@WebServlet("/deleteStudent")
public class DeleteStudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentDao studentDao;

    @Override
	public void init() {
        studentDao = new StudentDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int code = Integer.parseInt(request.getParameter("code"));
        studentDao.deleteStudent(code);

        // Redirect to another page after deletion
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/success.jsp");
        dispatcher.forward(request, response);
    }
}