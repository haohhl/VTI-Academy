package com.vti;

import java.io.IOException;

import java.sql.Connection;

import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/student_demo_database")
	private DataSource dataSource; // khai bao object

	public TestServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// step1: Set up printWriter
		// PrintWriter pw = response.getWriter();
		//response.setContentType("text/html");

		// step2: Get a connection database

		Connection myConn = null;
		Statement mySta = null;
		ResultSet myRs = null;

		List<TestStudent> listStudent = new ArrayList<TestStudent>();

//		String action = request.getServletPath();
//		while(action == "/delete") {
//			try {
//				PreparedStatement ps = myConn.prepareStatement(DELETE_USER_SQL);
//				int id = Integer.parseInt(request.getParameter("id"));
//				ps.setInt(1, id);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//		}

		try {
			myConn = dataSource.getConnection();

			String sql = "SELECT * FROM student";
			
			mySta = myConn.createStatement();

			myRs = mySta.executeQuery(sql);
			while (myRs.next()) {
				int id = myRs.getInt("id");
				String firstName = myRs.getString("first_name");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");

				TestStudent ts = new TestStudent(firstName, lastName, email, id);

				listStudent.add(ts);

			}
			

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("todolist", listStudent);

		RequestDispatcher rd = request.getRequestDispatcher("/view.jsp");
		rd.forward(request, response);

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
