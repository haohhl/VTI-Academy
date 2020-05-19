package com.demo.vti.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.demo.vti.model.Student;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/student_demo_database")
	private DataSource dataSource;

	// Step 1: Get a connection to the database
	Connection myConn = null;
	Statement myStatement = null;
	ResultSet resultSet = null;
	PreparedStatement myPre = null;
	
	public TestServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 2: Set content Type
		response.setContentType("text/htm;Character=UTF-8");
		PrintWriter out = response.getWriter();
		
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/delete":
				deleteId(request, response);
				break;
			case "/edit":
				editId(request, response);
				break;
			case "/add":
				addId(request, response);
				break;
			case "/update":
				updateId(request, response);
				break;
			default:
				selectId(request, response);
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Student> listStudent = new ArrayList<Student>();
		try {
			myConn = dataSource.getConnection();
			// step3
			String sql = "select* from student";
			myStatement = myConn.createStatement();
			// step 4
			resultSet = myStatement.executeQuery(sql);

			// step 5
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				String email = resultSet.getString("email");
				Student st = new Student(id, firstName, lastName, email);
				listStudent.add(st);
			}
			// step 7:
			request.setAttribute("listStudents", listStudent);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/StudentView.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void deleteId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String delete = "delete from student where id=?";
		try {
			myPre = myConn.prepareStatement(delete);
			myPre.setInt(1, id);
			myPre.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		selectId(request, response);
	}
	
	private void addId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String insert = "INSERT INTO student" + "  (first_name, last_name, email) VALUES " + " (?, ?, ?);";
		try {
			myPre = myConn.prepareStatement(insert);
			myPre.setString(1, firstName);
			myPre.setString(2, lastName);
			myPre.setString(3, email);
			myPre.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		selectId(request, response);
	}
	
	private void editId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		Student st = null;
		int id = Integer.parseInt(request.getParameter("id"));
		String select = "SELECT * FROM student WHERE id = ?;";
		try {
			myPre = myConn.prepareStatement(select);		
			myPre.setInt(1, id);		
			resultSet = myPre.executeQuery();
			
			while (resultSet.next()) {
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				String email = resultSet.getString("email");
				st = new Student(id, firstName, lastName, email);
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("/EditStudent.jsp");
			request.setAttribute("student", st);
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void updateId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String update = "UPDATE student SET first_name = ?,last_name = ?, email= ? WHERE id = ?;";
		try {
			myPre = myConn.prepareStatement(update);
			myPre.setString(1, firstName);
			myPre.setString(2, lastName);
			myPre.setString(3, email);
			myPre.setInt(4, id);
			myPre.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		selectId(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
