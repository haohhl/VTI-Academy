package com.vti.demo.servlet;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ControllerServletDemo")
public class ControllerServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ControllerServletDemo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 1:
		String[] students = {"Bui Van Tien", "Le Thu Huong", "Cao Thu Thao","Nguyen Viet Anh"};
		request.setAttribute("listStudents", students);
		
		//Step 2:
		RequestDispatcher dispatcher = request.getRequestDispatcher("JSPDemo.jsp");
		
		//step 3:
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	

}
