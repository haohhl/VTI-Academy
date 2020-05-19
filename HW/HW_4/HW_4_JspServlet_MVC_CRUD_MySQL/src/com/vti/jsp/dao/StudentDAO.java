package com.vti.jsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vti.jsp.model.Student;

public class StudentDAO {
	private static final String INSERT_STUDENTS_SQL = "INSERT INTO Student" + "(firstName,lastName,gender,birthDate,address) VALUES "
														+ " (?,?,?,?,?);";
	private static final String SELECT_STUDENTS_BY_ID ="SELECT * FROM Student WHERE id=?";
	private static final String SELECT_STUDENTS_ALL = "SELECT * FROM Student";
	private static final String UPDATE_STUDENTS_SQL ="UPDATE Student set firstName=?,lastName=?,gender=?,birthDate=?,address=? WHERE id=?;";
	private static final String DELETE_STUDENTS_SQL ="DELETE FROM Student WHERE id=?;";
	
	public List<Student> getAllStudent() throws SQLException  {
		List<Student> list = new ArrayList<>();
		Connection con;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		con = DButil.openConnection();
		try {
			pstmt = con.prepareStatement(SELECT_STUDENTS_ALL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setFirstName(rs.getString("firstName"));
				s.setLastName(rs.getString("lastName"));
				s.setGender(rs.getBoolean("gender"));
				s.setBirthDate(rs.getDate("birthDate"));
				s.setAddress(rs.getString("address"));
				list.add(s);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.closeAll(con, pstmt, rs);
		}
		return null;
	}
	
	public boolean insertStudent(Student s) throws SQLException {
		Connection con;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		con = DButil.openConnection();
		try {
			pstmt = con.prepareStatement(INSERT_STUDENTS_SQL);
			pstmt.setString(1, s.getFirstName());
			pstmt.setString(2, s.getLastName());
			pstmt.setBoolean(3, s.isGender());
			pstmt.setDate(4, new java.sql.Date(s.getBirthDate().getTime()));			
			pstmt.setString(5, s.getAddress());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.closeAll(con, pstmt, rs);
		}
		return false;
	}
	
	public boolean updateStudent(Student s) throws SQLException {
		Connection con;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		con = DButil.openConnection();
		try {
			pstmt = con.prepareStatement(UPDATE_STUDENTS_SQL);
			pstmt.setString(1, s.getFirstName());
			pstmt.setString(2, s.getLastName());
			pstmt.setBoolean(3, s.isGender());
			pstmt.setDate(4, new java.sql.Date(s.getBirthDate().getTime()));			
			pstmt.setString(5, s.getAddress());
			pstmt.setInt(6, s.getId());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.closeAll(con, pstmt, rs);
		}
		return false;
	}
	
	public boolean deleteStudent(int id) throws SQLException {
		Connection con;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		con = DButil.openConnection();
		try {
			pstmt = con.prepareStatement(DELETE_STUDENTS_SQL);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DButil.closeAll(con, pstmt, rs);
		}
		return false;
	}
	
	public Student getStudentById(int id) throws SQLException {
		Connection con;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		con = DButil.openConnection();
		try {
			pstmt = con.prepareStatement(SELECT_STUDENTS_BY_ID);
			pstmt.setInt(1, id);		
			rs = pstmt.executeQuery();
			Student s = new Student();
			while (rs.next()) {		
				s.setId(rs.getInt("id"));
				s.setFirstName(rs.getString("firstName"));
				s.setLastName(rs.getString("lastName"));
				s.setGender(rs.getBoolean("gender"));
				s.setBirthDate(rs.getDate("birthDate"));
				s.setAddress(rs.getString("address"));
			}
			return s;	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DButil.closeAll(con, pstmt, rs);
		}
		return null;
	}
}
