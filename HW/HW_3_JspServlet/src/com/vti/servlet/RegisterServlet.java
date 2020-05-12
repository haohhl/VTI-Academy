package com.vti.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. set ContentType
		response.setContentType("text/html; charset=utf-8");
		
		// 2. set Encoding UTF-8
		request.setCharacterEncoding("utf-8");

		// 3. get PrintWriter
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>\r\n" + 
				"  <meta charset=\"UTF-8\" />\r\n" + 
				"  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n" + 
				"  <title>Register</title>\r\n" + 
				"\r\n" + 
				"  <!-- CSS -->\r\n" + 
				"  <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n" + 
				"  <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js\"></script>\r\n" + 
				"  <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\r\n" + 
				"  <link rel=\"stylesheet\" href=\"./resoureces/CSS/style.css\" />\r\n" + 
				"</head>");
		out.println("<body>");
		out.println("<div class=\"container\">");
		out.println("<h1 style=\"color: green;\">Register Successfully!</h1>");
		out.println("<h2>Infomation</h2>");
		out.println("<p> First Name: " + request.getParameter("firstName") + "</p>");
		out.println("<p> Last Name: " + request.getParameter("lastName") + "</p>");
		out.println("<p> Address: " + request.getParameter("address") + "</p>");
		out.println("<p> City: " + request.getParameter("city") + "</p>");
		out.println("<p> State: " + request.getParameter("state") + "</p>");
		out.println("<p> Zip: " + request.getParameter("zip") + "</p>");
		out.println("<p> Title: " + request.getParameter("title") + "</p>");
		out.println("<p> Company: " + request.getParameter("company") + "</p>");
		out.println("<p> Phone number: " + request.getParameter("phoneNumber") + "</p>");
		out.println("<p> Email: " + request.getParameter("email") + "</p>");
		out.println("<p> Website: " + request.getParameter("website") + "</p>");
		out.println("</div>");
		out.println("</body></html>");
	}

}
