package net.work.registration.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.work.registration.dao.StudentDao;
import net.work.registration.model.Student;

@WebServlet("/students")
public class ListStudentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   private final StudentDao studentDao;
    public ListStudentsServlet() {
        super();
        this.studentDao = new StudentDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the list of all students from the database
        List<Student> allStudents = null;

            allStudents = studentDao.getAllStudents();


        // Set the list of students as an attribute in the request
        request.setAttribute("students", allStudents);

        // Forward to a JSP page for displaying the list
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/response.jsp");
        dispatcher.forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
