package com.vti.databaseConnectionDemo;

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

@WebServlet("/")
public class dtbConnectionDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String INSERT_STUDENT_MYSQL = "INSERT INTO users" + "(firstName, lastName, email) VALUES " + "(?,?,?);";
	public static final String DELETE_STUDENT_SQL = "delete from users where id = ?;";
	private static final String SELECT_STUDENT_BY_ID = "select firstName, lastName, email from users where id= ?";
	private static final String UPDATE_STUDENT_SQL = "update users set firstName = ?, lastName = ?, email = ? where id= ?";

	@Resource(name = "jdbc/user")
	private DataSource dataSource;
	
	public Connection myConn = null;
	public Statement myStatement = null;
	public ResultSet resultSet = null;
	public PreparedStatement statement = null;
	
	public dtbConnectionDemo() {
		super();
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		List<Students> stList = new ArrayList<>();

		// step 2: get connection		
		try {
			myConn = dataSource.getConnection();
			String sql = "select * from users";
			myStatement = myConn.createStatement();

			resultSet = myStatement.executeQuery(sql);
				
			while (resultSet.next()) {
				
				int id = resultSet.getInt("id");
				String lastName = resultSet.getString("lastName");
				String firstName = resultSet.getString("firstName");
				String email = resultSet.getString("email");
				
				stList.add(new Students(id, firstName, lastName, email));
			}
			
			String action = request.getServletPath();
			try {
				switch (action) {
					case "/insert":
						insertStudent(request, response);
						break;
					case "/update":
						updateStudent(request, response);
						break;
					case "/delete":
						deleteStudent(request, response);
						break;
					case "/edit":
						editStudent(request, response);
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
		request.setAttribute("studentsList", stList);
		RequestDispatcher dispatch = request.getRequestDispatcher("/stList.jsp");
		dispatch.forward(request, response);
		
	}
	
	private void insertStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("stForm.jsp");
		dispatcher.forward(request, response);
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		
		PreparedStatement prepareStatement = (PreparedStatement) myConn.prepareStatement(INSERT_STUDENT_MYSQL);
			prepareStatement.setString(1, firstName);
			prepareStatement.setString(2, lastName);
			prepareStatement.setString(3, email);
			prepareStatement.executeUpdate();
	}

	
	private void updateStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
			
		PreparedStatement statement = (PreparedStatement) myConn.prepareStatement(UPDATE_STUDENT_SQL);
		statement.setString(1, request.getParameter("firstName"));
		statement.setString(2, request.getParameter("lastName"));
		statement.setString(3, request.getParameter("email"));
		statement.setInt(4, id);
		
		statement.executeUpdate();
	}
	
	
	private void editStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		PreparedStatement prepareStatement = (PreparedStatement) myConn.prepareStatement(SELECT_STUDENT_BY_ID);
		prepareStatement.setInt(1, id);
		resultSet = prepareStatement.executeQuery();
		
		Students student = null;
		while (resultSet.next()) {
			String firstName = resultSet.getString("firstName");
			String lastName = resultSet.getString("lastName");
			String email = resultSet.getString("email");
			student = new Students(id, firstName, lastName, email);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("stForm.jsp");
		request.setAttribute("student", student);
		dispatcher.forward(request, response);
	}
	
	
	
	private void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		statement = myConn.prepareStatement(DELETE_STUDENT_SQL);
		statement.setInt(1, id);
		statement.executeUpdate();
	}
	
	
	
}
	