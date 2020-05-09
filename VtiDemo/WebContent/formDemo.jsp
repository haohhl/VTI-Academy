<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<form action="formResponse.jsp">
	    <div class="form-group">
	      <label for="text">First Name:</label>
	      <input type="text" class="form-control" id="firstName" placeholder="Enter first name" name="firstName">
	    </div>
	    <div class="form-group">
	      <label for="text">Last Name:</label>
	      <input type="text" class="form-control" id="lastName" placeholder="Enter last name" name="lastName">
	    </div>
	    <div class="form-group">
		    <label for="text">Your age:</label>
			<select id="ages" name="ages">
			  <option value="22">22</option>
			  <option value="21">21</option>
			  <option value="20">20</option>
			  <option value="19">19</option>
			</select>
		</div>
	    <div class="form-group">
	      <label for="text">Your school:</label>
	      <br>
	      <input type="radio" id="school1" name="school" value="NEU">
		  <label for="text">Kinh te quoc dan</label><br>
		  <input type="radio" id="school2" name="school" value="HUST">
		  <label for="text">Bach Khoa</label><br>  
		  <input type="radio" id="school3" name="school" value="NUCE">
		  <label for="text">Xay dung</label><br><br>
	    </div>
	    <div class="form-group">
	      <label for="text">Your favorite color:</label>
	      <br>
	      <input type="checkbox"  name="color" value="Red">
		  <label for="age1">Red</label><br>
		  <input type="checkbox"  name="color" value="Green">
		  <label for="age1">Green</label><br>
		  <input type="checkbox"  name="color" value="Blue">
		  <label for="age1">Blue</label><br>
	    </div>
	    <button type="submit" class="btn btn-primary">Submit</button>
	 </form>
	   				 <!-- c: set -->
	    
	    <c:set var="income" scope="session" value="${4000*4}"/>  
			<p>Salary is: <c:out value="${income}"/></p>
			
					 <!-- c: if -->
		<c:if test="${income > 8000}">  
  	    	<p>My income is: <c:out value="${income}"/><p>  
		</c:if> 
		
					<!-- c:choose, when, otherwise -->
		<c:choose>  
		    <c:when test="${income <= 1000}">  
		       Income is not good.  
		    </c:when>  
		    <c:when test="${income > 10000}">  
		        Income is very good.  
		    </c:when>  
		    <c:otherwise>  
		       Income is undetermined...  
		    </c:otherwise>  
		</c:choose>  
		
					<!-- c: for each -->
		<br>
		<c:forEach var="j" begin="1" end="3">  
   			Item <c:out value="${j}"/><p>  
		</c:forEach> 
</body>
</html>



c:out
c:set
c:remove
c:if
c:choose
c:when
c:otherwise
c:forEach
