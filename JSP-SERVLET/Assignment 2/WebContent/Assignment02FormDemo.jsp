<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Order Form</title>

<link rel="stylesheet" type="text/css" href="Style.css">

</head>
<body>
	<h2>Product Order Form</h2>
	<hr>
	
	<form class="form-inline" action="Assignment02FormRespone.jsp">
	
		<h4><i>Customer Information</i></h4>
		<div>
			<h4 class="h4Infor">1. Full Name</h4>	
	  		
			<div class="form-group">	    
			    <input type="text" name="firstName" class="form-control">
			    <p class="underText">First Name</p>
			</div>
			
			<div class="form-group">	    
			    <input type="text" name="lastName" class="form-control">
			    <p class="underText">Last Name</p>
			</div>
	  	</div>
	  	
	 	<div>
			<h4 class="h4Infor">2. Address</h4>	
			
			<div>	    
			    <input type="text" name="address" class="form-control" id="formAddress">
			    <p class="underText">Street Address</p>
			</div>
		 		
		 	<div>
				<div class="form-group">	    
				    <input type="text" name="city" class="form-control">
				    <p class="underText">City</p>
				</div>
				
				<div class="form-group">	    
				    <input type="text" name="stateProvince" class="form-control">
				    <p class="underText">State/ Province</p>
				</div>	
			</div>	
		
			<div>
			  	<div class="form-group">	    
					    <input type="text" name="zipCode" class="form-control">
					    <p class="underText">Zip Code</p>
				</div>
					
				<div class="form-group">	    
					<select name="country" id="selectCountry">
						<option>Viet Nam</option>
						<option>China</option>
						<option>Japan</option>
						<option>USA</option>			
					</select>
					<p class="underText">Country</p>
				</div>
			</div>
		</div>
		
		<div>
			<h4 class="h4Infor">3. Comment</h4>
				<div class="form-group">			
					<textarea class="form-control" rows="5" name="comment" id="comment"></textarea>
				</div>
		</div>
		
		<hr>
	  	
	  	<h4><i>Product</i></h4>
	  	<div>
	  		<h4 class="h4Infor">1. Color</h4>
	  		<label class="checkbox-inline"><input type="checkbox" name="colorProduct" value="Red">Red</label>
			<label class="checkbox-inline"><input type="checkbox" name="colorProduct" value="Blue">Blue</label>
			<label class="checkbox-inline"><input type="checkbox" name="colorProduct" value="Orange">Orange</label>
	
	  		<h4 class="h4Infor">2. Quantity</h4>
	  		<div class="form-group">	    
				<select name="quantity">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>	
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>	
					<option>9</option>
					<option>10</option>
				</select>
			</div>
			
	  		<h4 class="h4Infor">3. Delivery</h4>
	  		<label class="radio-inline"><input type="radio" name="delivery">Delivery</label>
			<label class="radio-inline"><input type="radio" name="delivery">Carry out</label>
	  	</div>  
	  	
	  	<input id="submitButon" type="submit" value="Submit"/>	
	</form>
	
	<hr>
	
	<h3 id="h3Footer"><i>Thanks for your choice</i></h3>
	
</body>
</html>