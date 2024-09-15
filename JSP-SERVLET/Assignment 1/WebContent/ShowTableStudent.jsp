<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.vti.demo.jsp.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student List</title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
	</head>
	<body>	
		<%! List<Student> list = new ArrayList<>(); %>
		
		<%! Student student01 = new Student("SV01", "Cao Thi Trang", 	20, "Female", 	"NEU", "0123123123", "Hai Duong"); %>
		<%! Student student02 = new Student("SV02", "Nguyen Hong Nhung",20, "Female", 	"NEU", "0123123124", "Bac Ninh"); %>
		<%! Student student03 = new Student("SV03", "Dinh Thi Nguyet",	20, "Female",	"NEU", "0123123125", "Bac Ninh"); %>
		<%! Student student04 = new Student("SV04", "Bui Van Tien", 	20, "Male", 	"NEU", "0123123126", "Thai Binh"); %>
		<%! Student student05 = new Student("SV05", "Nguyen Viet Anh", 	20, "Male",		"NEU", "0123123127", "Ha Nam"); %>
		<%! Student student06 = new Student("SV06", "Nguyen Tat Thanh", 20, "Male", 	"NEU", "0123123128", "Hai Phong"); %>
		<%! Student student07 = new Student("SV07", "Cao Mai Huong", 	24, "Female", 	"NEU", "0123123129", "Quang Ninh"); %>
		<%! Student student08 = new Student("SV08", "Le Thu Huong", 	21, "Female", 	"NEU", "0123123130", "Hai Duong"); %>
		<%! Student student09 = new Student("SV09", "Cao Thu Thao", 	20, "Female", 	"NEU", "0123123131", "Quang Ninh"); %>
		<%! Student student10 = new Student("SV10", "Ha Van Tien", 		20, "Male", 	"NEU", "0123123132", "Thai Binh"); %>	
		
		<% list.add(student01); %>
		<% list.add(student02); %>
		<% list.add(student03); %>
		<% list.add(student04); %>
		<% list.add(student05); %>
		<% list.add(student06); %>
		<% list.add(student07); %>
		<% list.add(student08); %>
		<% list.add(student09); %>
		<% list.add(student10); %>
		
		
		<div class="container">
  			<h2>List Student</h2>			           
  			<table class="table table-striped">
    			<thead>
      				<tr>
        				<th>ID</th>
        				<th>Name</th>
        				<th>Age</th>
        				<th>Gender</th>
        				<th>School</th>
        				<th>Phone number</th>
        				<th>Address</th>
      				</tr>
    			</thead>
    			<tbody>
    				<tr>   					
    					<td><%= list.get(0).getId() %></td>
    					<td><%= list.get(0).getName() %></td>
    					<td><%= list.get(0).getAge() %></td>
    					<td><%= list.get(0).getGender() %></td>
    					<td><%= list.get(0).getSchool() %></td>
    					<td><%= list.get(0).getPhoneNumber() %></td>
    					<td><%= list.get(0).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(1).getId() %></td>
    					<td><%= list.get(1).getName() %></td>
    					<td><%= list.get(1).getAge() %></td>
    					<td><%= list.get(1).getGender() %></td>
    					<td><%= list.get(1).getSchool() %></td>
    					<td><%= list.get(1).getPhoneNumber() %></td>
    					<td><%= list.get(1).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(2).getId() %></td>
    					<td><%= list.get(2).getName() %></td>
    					<td><%= list.get(2).getAge() %></td>
    					<td><%= list.get(2).getGender() %></td>
    					<td><%= list.get(2).getSchool() %></td>
    					<td><%= list.get(2).getPhoneNumber() %></td>
    					<td><%= list.get(2).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(3).getId() %></td>
    					<td><%= list.get(3).getName() %></td>
    					<td><%= list.get(3).getAge() %></td>
    					<td><%= list.get(3).getGender() %></td>
    					<td><%= list.get(3).getSchool() %></td>
    					<td><%= list.get(3).getPhoneNumber() %></td>
    					<td><%= list.get(3).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(4).getId() %></td>
    					<td><%= list.get(4).getName() %></td>
    					<td><%= list.get(4).getAge() %></td>
    					<td><%= list.get(4).getGender() %></td>
    					<td><%= list.get(4).getSchool() %></td>
    					<td><%= list.get(4).getPhoneNumber() %></td>
    					<td><%= list.get(4).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(5).getId() %></td>
    					<td><%= list.get(5).getName() %></td>
    					<td><%= list.get(5).getAge() %></td>
    					<td><%= list.get(5).getGender() %></td>
    					<td><%= list.get(5).getSchool() %></td>
    					<td><%= list.get(5).getPhoneNumber() %></td>
    					<td><%= list.get(5).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(6).getId() %></td>
    					<td><%= list.get(6).getName() %></td>
    					<td><%= list.get(6).getAge() %></td>
    					<td><%= list.get(6).getGender() %></td>
    					<td><%= list.get(6).getSchool() %></td>
    					<td><%= list.get(6).getPhoneNumber() %></td>
    					<td><%= list.get(6).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(7).getId() %></td>
    					<td><%= list.get(7).getName() %></td>
    					<td><%= list.get(7).getAge() %></td>
    					<td><%= list.get(7).getGender() %></td>
    					<td><%= list.get(7).getSchool() %></td>
    					<td><%= list.get(7).getPhoneNumber() %></td>
    					<td><%= list.get(7).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(8).getId() %></td>
    					<td><%= list.get(8).getName() %></td>
    					<td><%= list.get(8).getAge() %></td>
    					<td><%= list.get(8).getGender() %></td>
    					<td><%= list.get(8).getSchool() %></td>
    					<td><%= list.get(8).getPhoneNumber() %></td>
    					<td><%= list.get(8).getAddress() %></td>
    				</tr>
    				
    				<tr>   					
    					<td><%= list.get(9).getId() %></td>
    					<td><%= list.get(9).getName() %></td>
    					<td><%= list.get(9).getAge() %></td>
    					<td><%= list.get(9).getGender() %></td>
    					<td><%= list.get(9).getSchool() %></td>
    					<td><%= list.get(9).getPhoneNumber() %></td>
    					<td><%= list.get(9).getAddress() %></td>
    				</tr>
    			</tbody>
  			</table>
		</div>
	</body>
</html>