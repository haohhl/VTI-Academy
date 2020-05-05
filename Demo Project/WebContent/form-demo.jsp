<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Demo</title>
</head>
<body>
	<form action="form-response.jsp">
		FirstName: <input type="text" name=firstName value="" > </br></br>
		LirstName: <input type="text" name=lastName value="" > </br></br>
		</br></br> 
		
		<input type="radio"  name="gender" value="male">Male
  		<input type="radio" name="gender" value="female">Female
  		<input type="radio"  name="gender" value="other">Other
  	
		
		
		<input type="submit" name=submit value="Send">	
	</form>
</body>
</html>