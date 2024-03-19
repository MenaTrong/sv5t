<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
    <title>Quên mật khẩu</title>
	<link rel="stylesheet" href="CSS/style01.css">
	<link rel="stylesheet" href="CSS/style02.css">
	<link rel="stylesheet" href="CSS/util.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-blue">
		<div class="container">
			<a href="login.jsp"><img class="text-middle m-r-5" style="width : 65px; height : 65px;" src="Image/Logo_Hoi-01.png" alt="#"/><img class="text-middle m-l-5" src="Image/Logo_UTH.png" alt="#"/></a>
		</div>
	</nav>
	<div class="container-login100">
		<div class="wrap-login101">
			<div class="wrap-login100">
				<div class="container">
					<div class="login-form">
						<h2>Xác nhận</h2>
						<form class="login100-form validate-form" method="post" action="ForgetController">
							<div class="text-center p-t-5 p-b-30">
								<p>Hãy nhập Email bạn đã đăng ký để khôi phục lại mật khẩu của bạn.</p>
							</div>
							<div class="wrap-input100 validate-input"
								data-validate="Valid email is: a@b.c">
								<input class="input100" type="email" name="email"
									placeholder="Nhập Email" required> <span
									class="focus-input100"></span>
							</div>

							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">Gửi</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

