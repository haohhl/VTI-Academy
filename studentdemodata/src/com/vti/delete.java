package com.vti;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class delete
 */
@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/student_demo_database")
	private DataSource dataSource; // khai bao object

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public delete() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection myConn = null;
		PreparedStatement myPreSta = null;

		try {
			int id = Integer.parseInt(request.getParameter("id"));
			myConn = dataSource.getConnection();

			String sql = "DELETE FROM student WHERE id = ?";

			myPreSta = myConn.prepareStatement(sql);
			myPreSta.setInt(1, id);

			myPreSta.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("TestServlet");
			rd.forward(request, response);
//			response.sendRedirect("/TestServlet.java");
		} catch (Exception e) {
			// TODO: handle exception0
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
