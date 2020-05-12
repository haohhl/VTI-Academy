<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="form-response.jsp">
		<!-- điền input -->
		Frist Name: <input type="text" name="firstName"/><br><br>
		Last Name: <input type="text" name="lastName"/><br><br>
		
		<!-- chọn thanh cuộn -->
		<select name="country">
			<option>Viet Nam</option>
			<option>Korea</option>
			<option>Brazil</option>
			<option>Singapore</option>
		</select><br><br>
		
		<!-- nút chọn radio -->
		<input type="radio" name="favoriteColor" value="Red"/> Red
		<input type="radio" name="favoriteColor" value="Blue"/> Blue
		<input type="radio" name="favoriteColor" value="Green"/> Green
		<input type="radio" name="favoriteColor" value="Yellow"/> Yellow
		<input type="radio" name="favoriteColor" value="Brown"/> Brown
		<br><br>
		
		<!-- nút chọn radio -->
		<input type="checkbox" name="favoriteLanguage" value="Java"/> Java
		<input type="checkbox" name="favoriteLanguage" value="Ruby"/> Ruby
		<input type="checkbox" name="favoriteLanguage" value="PHP"/> Php
		<input type="checkbox" name="favoriteLanguage" value="Python"/> Python
		<input type="checkbox" name="favoriteLanguage" value="C++"/> C++
		<br><br>
		
		<!-- nút gửi dữ liệu -->
		<input type="submit" name="submit" value="gicungdc"/>
	</form>

</body>
</html>