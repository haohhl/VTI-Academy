package com.demo.vti.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HelloWordServlet")
public class HelloWordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HelloWordServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 1: Set content Type
		response.setContentType("text/html");
		
		// Step 2: get PrintWriter
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>Hello Servlet - This is the first try</h1>");
		out.println("</body></html>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
