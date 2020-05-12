package com.demo.vti.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public StudentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 1: Set content Type
		response.setContentType("text/html");
		
		// Step 2: get PrintWriter
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>Student Servlet</h1><hr>");
		out.println("<p>Student Frist Name is: " + request.getParameter("firstName") + "</p>");
		out.println("Student Last Name is: " + request.getParameter("lastName"));
		out.println("</body></html>");
		String x = request.getParameter("firstName");
		x = x.toUpperCase();
		RequestDispatcher view = request.getRequestDispatcher("/Demo.jsp");
		
		request.setAttribute("x", x);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
