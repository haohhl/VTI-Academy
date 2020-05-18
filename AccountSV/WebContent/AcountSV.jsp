<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<title>Acount Sinh Viên</title>
</head>
<body>
	
	<div  class="container">
		<div><h3>Đăng ký học thể dục</h3></div>
		<form action="InfromSV.jsp" class="was-validated">
			<div class="form-group">
				<label for="fullname">Tên sinh viên:</label>
				<input type="text"  class="form-control"  placeholder="Nhập fullname" name="fullname" required>
				<div class="invalid-feedback">Không được bỏ trống</div>
			</div>
			<div class="form-group">
				<label for="nganh">Chuyên ngành:</label>
				<input type="text"  class="form-control"  placeholder="Nhập tên chuyên ngành" name="chuyên ngành" required>
				<div class="invalid-feedback">Không được bỏ trống</div>
			</div>
			<div class="form-group">
				<label for="gioitnh">Giới tính</label>
				<input type="radio" name="gioitinh" value="nam" checked="checked">Nam
				<input type="radio" name="gioitinh" value="nu">Nữ
			</div>
			<div class="form-group">
				<label for="mon">Chọn môn muốn học</label>
				<select name="monchon">
					<option value="caulong">cầu lông</option>
					<option value="bongda">bóng đá</option>
					<option value="bongchuyen">bóng chuyền</option>
					<option value="bongro">bóng rổ</option>
				</select>
			</div>
			<div class="form-group">
				<label for="ngayhoc">Chọn ngày muốn học</label> <br/>
				<input type="checkbox" name="ngay" value="thuhai">Thứ hai
				<input type="checkbox" name="ngay" value="thuba">Thứ ba
				<input type="checkbox" name="ngay" value="thutu">Thứ tư
				<input type="checkbox" name="ngay" value="thunam">Thứ năm
				<input type="checkbox" name="ngay" value="thusau">Thứ sáu
				<input type="checkbox" name="ngay" value="thubay">Thứ bảy
			</div>
			<div class="form-group">
				<label for="nhanxet">Ý kiến môn học</label> <br/>
				<textarea name="message" rows="10" cols="30"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

</body>
</html>