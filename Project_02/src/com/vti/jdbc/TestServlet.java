package com.vti.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

import com.vti.entity.Student;



/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/student_demo")
	private DataSource dataSource;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
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

		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/delete":
				deleteStudent(request, response);
				break;
			case "/insert":
				insertStudent(request, response);
				break;
			case "/edit":
				editStudent(request, response);
				break;
			case "/update":
				updateStudent(request, response);
				break;
			default:
				listStudent(request, response);
				break;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
}


	private void listStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// step 1
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		// step 2
		Connection myConn = null;
		Statement myStaStatement = null;
		ResultSet resultSet = null;

		// Step 3
		try {

			myConn = dataSource.getConnection();

			String sql = "SELECT * FROM student";

			myStaStatement = myConn.createStatement();
			resultSet = myStaStatement.executeQuery(sql);

			List<Student> student = new ArrayList<>();
			while (resultSet.next()) {

				int id = resultSet.getInt("id");
				String first_name = resultSet.getString("first_name");
				String last_name = resultSet.getString("last_name");
				String email = resultSet.getString("email");
				student.add(new Student(id, first_name, last_name, email));
			}
			request.setAttribute("list", student);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/listStudent.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/Form.jsp");
		dispatcher.forward(request, response);
	}

	private void insertStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		
		Connection myConn = dataSource.getConnection();
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		
		PreparedStatement myPreStatement = (PreparedStatement) myConn.prepareStatement("INSERT INTO student" + "(first_name, last_name, email) VALUES " + "(?,?,?);");
		myPreStatement.setString(1, firstName);
		myPreStatement.setString(2, lastName);
		myPreStatement.setString(3, email);
		myPreStatement.executeUpdate();
		response.sendRedirect("list");
		
	}

	
	
	/**
	* This method is .
	*
	* @Description: .
	* @author: HuongLT
	* @create_date: May 24, 2020
	* @version: 1.0
	* @modifer: HuongLT
	* @modifer_date: May 24, 2020
	* @param request
	* @param response
	 * @throws SQLException 
	 * @throws IOException 
	 * @throws ServletException 
	*/
	private void editStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		
		Connection myConn = dataSource.getConnection();
		ResultSet resultSet = null;
		
		int id = Integer.parseInt(request.getParameter("id"));
		PreparedStatement myPreStatement = (PreparedStatement) myConn.prepareStatement("SELECT first_name, last_name, email FROM student WHERE id= ?;");
		myPreStatement.setInt(1, id);
		resultSet = myPreStatement.executeQuery();
		
		Student student = null;
		while (resultSet.next()) {
			String firstName = resultSet.getString("first_name");
			String lastName = resultSet.getString("last_name");
			String email = resultSet.getString("email");
			student = new Student(id, firstName, lastName, email);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("Form.jsp");
		request.setAttribute("student", student);
		dispatcher.forward(request, response);
		
	}
	/**
	 * This method is .
	 *
	 * @Description: .
	 * @author: HuongLT
	 * @create_date: May 19, 2020
	 * @version: 1.0
	 * @modifer: HuongLT
	 * @modifer_date: May 19, 2020
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws SQLException
	 */
	private void deleteStudent(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {

		Connection myConn = dataSource.getConnection();
		PreparedStatement myPreStatement =null;
		
		int id = Integer.parseInt(request.getParameter("id"));
		myPreStatement = myConn.prepareStatement("DELETE FROM student WHERE id = ?;");
		myPreStatement.setInt(1, id);
		myPreStatement.executeUpdate();
		response.sendRedirect("list");
	}

	/**
	 * This method is .
	 *
	 * @Description: .
	 * @author: HuongLT
	 * @create_date: May 19, 2020
	 * @version: 1.0
	 * @modifer: HuongLT
	 * @modifer_date: May 19, 2020
	 * @param request
	 * @param response
	 * @throws SQLException
	 * @throws IOException
	 */
	private void updateStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		

		Connection myConn = dataSource.getConnection();
		PreparedStatement myPreStatement =null;
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
	
		myPreStatement = (PreparedStatement) myConn.prepareStatement("UPDATE student SET first_name = ?, last_name = ?, email = ? WHERE id= ?");
		myPreStatement.setString(1, firstName);
		myPreStatement.setString(2, lastName);
		myPreStatement.setString(3, email);
		myPreStatement.setInt(4, id);
		myPreStatement.executeUpdate();
		response.sendRedirect("list");
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
