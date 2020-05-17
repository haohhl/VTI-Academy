
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Step 1: Set content Type
		response.setContentType("text/htm;Character=UTF-8");
		PrintWriter out = response.getWriter();
		
		//Step 2:
		String id = request.getParameter("id");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String school = request.getParameter("school");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		//Step 3:
		Student st = new Student(id, firstName, lastName, age, gender, school, phoneNumber, email, address);
		ArrayList<Student> listStudent = new ArrayList<Student>();
		
		//Step 4:
		listStudent.add(st);
		
		request.setAttribute("listStudents", listStudent);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/StudentView.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
