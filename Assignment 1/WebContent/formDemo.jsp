<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="requestDemo.jsp">
		First Name: <input type="text" name="firstName"/><br><br>
		Last Name: <input type="text" name="lastName"/><br><br>
		<select name="country">
			<option>VietNam</option>
			<option>Russia</option>
			<option>America</option>
			<option>China</option>
			<option>Brasil</option>
		</select>
		<br><br>
		<input name="color" type="radio" value="red" />red
		<input name="color" type="radio" value="blue" />blue
		<input name="color" type="radio" value="green" />green
		<br><br>
		<input name="language" type="checkbox" value="C++" />C++
		<input name="language" type="checkbox" value="C#" />C#
		<input name="language" type="checkbox" value="C" />C
		<br><br>
		<input type="submit" />
		
    </form>
</body>
</html>