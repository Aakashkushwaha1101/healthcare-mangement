<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="Container">
		<h4>user Register</h4>
		<form action="#" method="post">
			<div class="form-group">
				<label for="fullname">Full Name:</label> <input type="text"
					id="fullname" name="fullname" required>
			</div>
			<div class="form-group">
				<label for="email">Email Address:</label> <input type="email"
					id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="confirm-password">Confirm Password:</label> <input
					type="password" id="confirm-password" name="confirm-password"
					required>
			</div>
			<div class="form-group">
				<input type="submit" value="Register">
			</div>
		</form>
	</div>
	<button type="button" class="btn btn-primary">Register</button>
    <button type="reset" class="btn btn-secondary">reset</button>




<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>