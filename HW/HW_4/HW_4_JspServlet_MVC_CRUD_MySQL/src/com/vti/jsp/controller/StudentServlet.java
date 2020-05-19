package com.vti.jsp.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vti.jsp.dao.StudentDAO;
import com.vti.jsp.model.Student;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private StudentDAO studentDAO;   
    
    public StudentServlet() {
        super();
        studentDAO = new StudentDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		
		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertStudent(request, response);
				break;
			case "/delete":
				deleteStudent(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateStudent(request, response);
				break;
			default:
				listStudent(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
	
	private void listStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Student> listStudent = studentDAO.getAllStudent();
		request.setAttribute("listStudent", listStudent);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Student-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Student-form-insert.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Student existingStudent = studentDAO.getStudentById(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Student-form-edit.jsp");
		request.setAttribute("Student", existingStudent);
		dispatcher.forward(request, response);

	}

	private void insertStudent(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ParseException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender =  request.getParameter("gender");
		String birthDate = request.getParameter("birthDate");
		String address = request.getParameter("address");
		Student newStudent = new Student();
		newStudent.setFirstName(firstName);
		newStudent.setLastName(lastName);
		newStudent.setGender(Boolean.parseBoolean(gender));
		Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(birthDate);
		newStudent.setBirthDate(date1);
		newStudent.setAddress(address);
		studentDAO.insertStudent(newStudent);
		response.sendRedirect("loadAll");
	}

	private void updateStudent(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ParseException {
		int id = Integer.parseInt(request.getParameter("id"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender =  request.getParameter("gender");
		String birthDate = request.getParameter("birthDate");
		String address = request.getParameter("address");
		Student newStudent = new Student();
		newStudent.setId(id);
		newStudent.setFirstName(firstName);
		newStudent.setLastName(lastName);
		newStudent.setGender(Boolean.parseBoolean(gender));
		Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(birthDate);
		newStudent.setBirthDate(date1);
		newStudent.setAddress(address);	
		studentDAO.updateStudent(newStudent);
		response.sendRedirect("loadAll");
	}

	private void deleteStudent(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		studentDAO.deleteStudent(id);
		response.sendRedirect("loadAll");

	}

}
