package com.vti;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/student_demo_database")
	private DataSource dataSource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
			try {
				
				Connection myConn = null;
				PreparedStatement myPre = null;
				
				
				myConn = dataSource.getConnection();
	
				String id = request.getParameter("id");
				int idS = Integer.parseInt(id);
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String email = request.getParameter("email");
				
				
				
				String  queryUpdate = "UPDATE student SET first_name = ?, last_name = ?, email = ? WHERE id = ?";
				
				myPre = myConn.prepareStatement(queryUpdate);
				
				
				//myPre.setString(1, id);
				myPre.setString(1, firstName);
				myPre.setString(2, lastName);
				myPre.setString(3, email);
				myPre.setInt(4, idS);		
				myPre.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("TestServlet");
			rd.forward(request, response);
			
			
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
