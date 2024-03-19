<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("USER") == null) {
        response.sendRedirect("login.jsp"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
    }
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
<title>Đổi mật khẩu</title>
<link rel="stylesheet" href="CSS/style01.css">
<link rel="stylesheet" href="CSS/style02.css">
<link rel="stylesheet" href="CSS/util.css">
<script>
	
</script>

</head>
<body>
	<nav class="bg-blue">
		<div class="container">
			<a href="HomeController"><img class="text-middle m-r-5" style="width : 65px; height : 65px;" src="Image/Logo_Hoi-01.png" alt="#"/><img class="text-middle m-l-5" src="Image/Logo_UTH.png" alt="#"/></a>
		</div>
	</nav>
	
	<div class="container-login100">
		<div class="wrap-login101">
			<div class="wrap-login100">
				<div class="container">
					<div class="login-form">
						<h2>Đổi mật khẩu</h2>
						<form class="login100-form validate-form" action="ChangePasswordController" method="POST">
						
							<div class="wrap-input100 validate-input"
								data-validate="Enter password">
								<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
								</span>
								<input id="newpassword" class="input100" type="password" name="newpassword" placeholder="Nhập mật khẩu mới" required>
								<span class="focus-input100"></span>
							</div>
							
							<div class="wrap-input100 validate-input" data-validate="Confirm password">
								<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i></span>
								<input id="confirmnewPassword" class="input100" type="password" name="confirmnewPass" placeholder="Xác nhận mật khẩu mới" required>
								<span class="focus-input100"></span>
							</div>
							
							<p class="m-b-40" id="passwordMatchError" style="color: red; display: none;">Xác nhận mật khẩu không khớp!</p>

							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">Xác nhận</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	 document.addEventListener("DOMContentLoaded", function() {
		    var passwordInput = document.getElementById("newpassword");
		    var confirmPasswordInput = document.getElementById("confirmnewPassword");
		    var passwordMatchError = document.getElementById("passwordMatchError");

		    passwordInput.addEventListener("input", validatePassword);
		    confirmPasswordInput.addEventListener("input", validatePassword);

		    function validatePassword() {
		        var password = passwordInput.value;
		        var confirmPassword = confirmPasswordInput.value;

		        if (password !== confirmPassword) {
		            passwordMatchError.style.display = "block";
		        } else {
		            passwordMatchError.style.display = "none";
		        }
		    }
		    registerButton.addEventListener("click", function(event) {
		        if (passwordMatchError.style.display === "block") {
		            event.preventDefault(); // Ngăn chặn hành động mặc định của nút đăng ký
		        }
		    });
		});
	</script>
</body>
</html>