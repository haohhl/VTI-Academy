<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Student Form</title>
</head>
<body>
	<div style="text-align: center">
		<h1>STUDENT FORM</h1>
	</div>
	
	<form action="StudentServlet">
		First Name:
		<input type="text" name="firstName"/>
		<br><br>
		
		Last Name:
		<input type="text" name="lastName"/>
		<br><br>	
		
		Age: 
		<select name="age">
			<option>18</option>
			<option>19</option>
			<option>20</option>
			<option>21</option>
			<option>22</option>
			<option>23</option>
			<option>24</option>
			<option>25</option>
		</select>
		<br><br>
		
		Gender: 
		<input type="radio" name="gender" value="Male"/> Male
		<input type="radio" name="gender" value="Female"/> Female
		<br><br>
		
		School: 
		<input type="text" name="school"/>
		<br><br>
		
		Phone Number: 
		<input type="text" name="phoneNumber"/>
		<br><br>
		
		Email: 
		<input type="text" name="email"/>
		<br><br>
			
		Address: 
		<input type="checkbox" name="address" value="Hanoi"/> Hà Nội
		<input type="checkbox" name="address" value="ThaiBinh"/> Thái Bình
		<input type="checkbox" name="address" value="BacNinh"/> Bắc Ninh
		<input type="checkbox" name="address" value="QuangNinh"/> Quảng Ninh
		<br><br>
		
		<input type="submit" name="submit" value="Insert"/>
	</form>
</body>
</html>