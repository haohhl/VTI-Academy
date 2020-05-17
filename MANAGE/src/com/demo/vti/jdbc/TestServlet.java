package com.demo.vti.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.demo.vti.model.Student;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name="jdbc/student_demo_database")
	private DataSource dataSource;
	
    public TestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Step 1: Set content Type
		response.setContentType("text/htm;Character=UTF-8");
		PrintWriter out = response.getWriter();
		
		//Step 2: Get a connection to the database
		Connection myConn = null;
		Statement myStatement = null;
		ResultSet resultSet = null;
		
		ArrayList<Student> listStudent = new ArrayList<Student>();
		
		try{
			myConn = dataSource.getConnection();
			//step3
			String sql = "select* from student";
			String delete = "delete from student where id=?";
			String update = "update users set first_name = ?, last_name= ?, email= ?,  where id = ?;";
			myStatement = myConn.createStatement();
			//step 4
			resultSet = myStatement.executeQuery(sql);
			//step5
			while(resultSet.next()) {
				String id = resultSet.getString("id");
				String firstName = resultSet.getString("first_name");
				String lastName = resultSet.getString("last_name");
				String email = resultSet.getString("email");
				Student st = new Student(id, firstName, lastName, email);
				listStudent.add(st);
			}
			
			request.setAttribute("listStudents", listStudent);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/StudentView.jsp");
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
