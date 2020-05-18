package com.vti.serverlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InformUser
 */
@WebServlet("/InformUser")
public class InformUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InformUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// step 1: set contain type
		
		response.setContentType("text/html");
		
		// step 2: get printWiter
		
		PrintWriter pw = response.getWriter();
		pw.println("<html><body>");
		pw.println("Tên khách hàng" + request.getParameter("nameUser"));
		pw.println("Số điện thoại khách hàng" + request.getParameter("phoneUser"));
		pw.println("Email khách hàng" + request.getParameter("emailUser"));
		pw.println("</body></html>");
	}

}
