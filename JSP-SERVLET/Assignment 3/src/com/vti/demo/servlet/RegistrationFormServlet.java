package com.vti.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationFormServlet")
public class RegistrationFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegistrationFormServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 1: Set Content Type
		response.setContentType("text/html");
				
		// Step 2: get PrintWriter
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<p>Full name is: </p>" + request.getParameter("fullName"));
		out.println("<p>Email is: </p>" + request.getParameter("email"));
		out.println("<p>Password is: </p>" + request.getParameter("passWord"));
		out.println("</body></html>");
		
	}

}
