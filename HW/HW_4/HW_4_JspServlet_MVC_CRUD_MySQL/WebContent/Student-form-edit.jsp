<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Edit</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
<h1>Detail</h1>
<form action="update" method="post">
<div class="form-group">
<div class="row">
<div class="col">
Id: <input class="form-control" type="number" value="${Student.id}" name="id" readonly="true"/>
</div>
<div class="col">
First Name: <input class="form-control" type="text" value="${Student.firstName}" name="firstName" required/>
</div>
<div class="col">
Last Name: <input class="form-control" type="text" value="${Student.lastName}" name="lastName" required/>
</div>
</div>
</div>
<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12">
Gender: <br> 
<c:if test="${ Student.gender == true}">
<input type="radio" value="true" name="gender" checked/> Male
<input type="radio" value="false" name="gender"/> Female
</c:if>
<c:if test="${ Student.gender == false}">
<input type="radio" value="true" name="gender" /> Male
<input type="radio" value="false" name="gender" checked/> Female
</c:if>
</div>
<div class="col">
Birthday: <input class="form-control" type="date" value="${Student.birthDate}" name="birthDate" required/>
</div>
<div class="col">
Address: <input class="form-control" type="text" value="${Student.address}" name="address" required/>
</div>
</div>
</div>
<input class="btn btn-success" type="submit" value="Update"/>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>