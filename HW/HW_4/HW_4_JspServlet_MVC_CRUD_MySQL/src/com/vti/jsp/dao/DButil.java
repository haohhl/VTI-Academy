package com.vti.jsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.sql.DataSource;

public class DButil {
	@Resource(name="jdbc/HW_4")
	private DataSource dataSource;
	
	public static Connection openConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/HW_4?useSSL=false";
		String user = "root";
		String password = "root";
		String driver = "com.mysql.cj.jdbc.Driver";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return con;
	}
	
	public static void closeAll(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (con != null)
			try {
				con.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
	}
}
