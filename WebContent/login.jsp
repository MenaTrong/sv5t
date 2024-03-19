<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="CSS/style01.css">
	<link rel="stylesheet" href="CSS/style02.css">
	<link rel="stylesheet" href="CSS/util.css">
	<script src="JS/script.js"></script>
</head>
<body>

	<nav class="bg-blue">
		<div class="container">
			<img class="text-middle m-r-5" style="width : 65px; height : 65px;" src="Image/Logo_Hoi-01.png" alt="#"/><img class="text-middle m-l-5" src="Image/Logo_UTH.png" alt="#"/>
		</div>
	</nav>
	
	<div class="container-login100">
		<div class="wrap-login101">
			<div class="wrap-login100">
				<div class="container">
					<div class="login-form">
						<h2>Đăng Nhập</h2>
						<form class="login100-form validate-form" action="MainController" method="POST" onsubmit="savePreviousUrl()">
							<div class="wrap-input100 validate-input">
								<input class="input100" type="text" name="studentid" placeholder="Nhập MSSV hoặc Mã quản trị viên" required> <span
									class="focus-input100"></span>
							</div>

							<div class="wrap-input100 validate-input"
								data-validate="Enter password">
								<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
								</span>
								<input class="input100" type="password" name="password" placeholder="Nhập mật khẩu" required>
								<span class="focus-input100"></span>
							</div>

							<div class="container-login100-form-btn">
								<div class="wrap-login100-form-btn">
									<div class="login100-form-bgbtn"></div>
									<button class="login100-form-btn" name="btnAction" value="Login">Đăng nhập</button>
								</div>
							</div>

							<div class="text-right m-t-15">
								<a class="dec" href="forgetaccount.jsp"> Quên mật khẩu? </a>
							</div>
							<div class="text-center p-t-115">
								<span> Tạo tài khoản mới! </span>
								<a class="dec" href="signup.jsp"> Đăng ký </a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

