package com.demo.vti.web;

import java.io.IOException;
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

import com.demo.vti.model.Student;

import sun.rmi.server.Dispatcher;

@WebServlet("/")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/student_demo_database")
	private DataSource dataSource;
	
	public Connection myConn = null;
	public Statement myStatement = null;
	public ResultSet resultSet = null;
	public PreparedStatement myPreStatement = null;
	
    public StudentServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// step 1:
		response.setContentType("text/html");
		
		List<Student> students = new ArrayList<>();
		
		try {
			 myConn = dataSource.getConnection();
			// Step 2:Create a statement using connection object
			 myStatement = myConn.createStatement();
			// Step 3: Execute the query or update query
			 resultSet = myStatement.executeQuery("SELECT * FROM student");
			
			
			while (resultSet.next()) {
				int id = (Integer)resultSet.getInt("id");
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				String email = resultSet.getString("email");
				Student student = new Student(id, firstName, lastName, email);
				students.add(student);
			}
			
			String action = request.getServletPath();
			
			try {
				switch (action) {
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
						break;
				}
			} catch (SQLException e) {
					e.printStackTrace();
				}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		
			try {
				myConn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		
		request.setAttribute("listStudent", students);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListStudent.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
	
	
	public void deleteStudent (HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		myPreStatement = myConn.prepareStatement("DELETE FROM student WHERE id = ?;");
		myPreStatement.setInt(1, id);
		myPreStatement.executeUpdate();
	}
	
	public void insertStudent (HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("FormStudent.jsp");
		dispatcher.forward(request, response);
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		
		PreparedStatement myPreStatement = (PreparedStatement) myConn.prepareStatement("INSERT INTO student" + "(first_name, last_name, email) VALUES " + "(?,?,?);");
		myPreStatement.setString(1, firstName);
		myPreStatement.setString(2, lastName);
		myPreStatement.setString(3, email);
		myPreStatement.executeUpdate();
	}
	
	public void editStudent (HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		
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
		RequestDispatcher dispatcher = request.getRequestDispatcher("FormStudent.jsp");
		request.setAttribute("student", student);
		dispatcher.forward(request, response);
	}
	
	public void updateStudent (HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
	
		PreparedStatement myPreStatement = (PreparedStatement) myConn.prepareStatement("UPDATE student SET first_name = ?, last_name = ?, email = ? WHERE id= ?");
		myPreStatement.setString(1, firstName);
		myPreStatement.setString(2, lastName);
		myPreStatement.setString(3, email);
		myPreStatement.setInt(4, id);
		myPreStatement.executeUpdate();
	
	}
}
