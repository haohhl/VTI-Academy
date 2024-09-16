<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="responseDemo.jsp">
		First Name: <input type="text" name="firstName"/><br><br>
		Last Name: <input type="text" name="lastName"/><br><br>
		Phone Number: <input type="text" name="phoneNumber"/><br><br>
		Country: <select name="country">
						<option>VietNam</option>
						<option>Russia</option>
						<option>America</option>
						<option>China</option>
						<option>Brasil</option>
					</select>
		<br><br>
		Gender:	<input name="gender" type="radio" value="male" />male
				<input name="gender" type="radio" value="female" />female
		<br><br>
		
		Literacy:<input name="study" type="checkbox" value="primary" />Primary School
				<input name="study" type="checkbox" value="high" />High School
				<input name="study" type="checkbox" value="university" />University
		<br><br>
		<input type="submit" value="ADD"/>
		
    </form>
</body>
</html>