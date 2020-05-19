package com.vti;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 * Servlet implementation class exitSt
 */
@WebServlet("/exitSt")
public class exitSt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/student_demo_database")
	private DataSource dataSource;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public exitSt() {

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Connection myConn = null;
			PreparedStatement myPre = null;
			ResultSet myRes = null;
			
			myConn = dataSource.getConnection();
			int id = Integer.parseInt(request.getParameter("id"));
			
			HttpSession session = request.getSession();
			
			Object idSt = id;		
			Object firstNameSt = null;
			Object lastNameSt = null;
			Object emailSt = null;
			
			
			String select = "SELECT  first_name, last_name, email  FROM student WHERE id = ? ";
			
			
			
			myPre = myConn.prepareStatement(select);
			myPre.setInt(1, id);
			
			myRes = myPre.executeQuery();

			while (myRes.next()) {
				firstNameSt = myRes.getString("first_name");
				lastNameSt = myRes.getString("last_name");
				emailSt = myRes.getString("email");
			}	
			
			session.setAttribute("IDStudent", idSt );
			session.setAttribute("firstNameStudent", firstNameSt );
			session.setAttribute("lastNameStudent", lastNameSt );
			session.setAttribute("emailStudent", emailSt );
			

		} catch (SQLException e) {

			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/viewexit.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
