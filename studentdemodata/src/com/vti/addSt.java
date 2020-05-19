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
 * Servlet implementation class addSt
 */
@WebServlet("/addSt")
public class addSt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/student_demo_database")
	private DataSource dataSource; // khai bao object

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addSt() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/insertST.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Connection myConn = null;
			PreparedStatement myPreSta = null;

			myConn = dataSource.getConnection();

			String sql = "INSERT INTO student (first_name, last_name, email) VALUES (?,?,?);";

			myPreSta = myConn.prepareStatement(sql);

			myPreSta.setString(1, request.getParameter("firstName"));
			myPreSta.setString(2, request.getParameter("lastName"));
			myPreSta.setString(3, request.getParameter("email"));

			myPreSta.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("TestServlet");
		rd.forward(request, response);

	}

}
