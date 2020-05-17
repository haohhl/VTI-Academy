package com.vti.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.sun.corba.se.pept.transport.Connection;

public class StudentDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/manage?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";
	
	private static final String INSERT_STUDENT_SQL = "INSERET INTO student"
			+ "(First_Name, Last_Name, Age, Gender, School, Phone_Number, Email, Address) VALUES" 
			+ "(?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String SELECT_STUDENT_BY_ID = "select Id, First_Name, Last_Name, Age, Gender, School, Phone_Number, Email, Address from student where Id = ?";
	private static final String SELECT_ALL_STUDENT = "select * from student";
	private static final String DELETE_STUDENT_SQL = "delete from student where Id = ?";
	private static final String UPDATE_STUDENT_SQL = "update student set First_Name = ?, Last_Name = ?, Age = ?, Gender = ?, School = ?, Phone_Number = ?, Email = ?, Address = ? where Id = ?";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	// Create or inset user
	
	
}
