<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Thêm học sinh</title>
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
</head>
<body>
	<div class="container">
		<h1>Thêm học sinh</h1>
		<form action="StudentManager.jsp">
			<div class="form-row">
				<div class="form-group col-md-6">
					<input class="form-control" type="text" name="id" value="0" hidden />
					Họ và tên: <input class="form-control" type="text" name="name"
						required />
				</div>
				<div class="form-group col-md-6">
					Tuổi: <input class="form-control" type="number" name="age" min="0"
						required />
				</div>
			</div>
			<div class="form-row">
				Giới tính: <input type="radio" name="gender" value="Nam" required />Nam
				<input type="radio" name="gender" value="Nữ" required />Nữ
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					Trường học: <input class="form-control" type="text" name="school"
						required />
				</div>
				<div class="form-group col-md-6">
					Số điện thoại: <input class="form-control" type="tel" name="phone"
						placeholder="8888888888" pattern="[0-9]{10}" maxlength="10"
						required />
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					Địa chỉ: <input class="form-control" type="text" name="address1" />
				</div>
				<div class="form-group col-md-6">
					Tỉnh/Thành phố: <select class="custom-select" name="address2"
						required>
						<option selected value="Hà Nội">Hà Nội</option>
						<option value="Hải Phòng">Hải Phòng</option>
						<option value="Nam Định">Nam Định</option>
						<option value="Bắc Ninh">Bắc Ninh</option>
					</select>
				</div>
			</div>
			Gồm: <input type="checkbox" name="address3" value="Bố" />Bố <input
				type="checkbox" name="address3" value="Mẹ" />Mẹ <input
				type="checkbox" name="address3" value="Bạn" />Bạn <br /> <input
				class="btn btn-success" type="submit" value="Thêm" />
		</form>
	</div>

	<!-- Java Script -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
