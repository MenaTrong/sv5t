<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
    <title>Đăng ký</title>
	<link rel="stylesheet" href="CSS/style01.css">
	<link rel="stylesheet" href="CSS/style02.css">
	<link rel="stylesheet" href="CSS/util.css">
	<script src="JS/script.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-blue">
		<div class="container">
			<a href="login.jsp"><img class="text-middle m-r-5" style="width : 65px; height : 65px;" src="Image/Logo_Hoi-01.png" alt="#"/><img class="text-middle m-l-5" src="Image/Logo_UTH.png" alt="#"/></a>
		</div>
	</nav>

	<div class="container-login100 p-b-50">
		<div class="wrap-login101" style="width: 90%;">
			<form class="login100-form validate-form" method="post"
				action="SignupController" onsubmit="return validateForm()">
				<div class="container-index">
					<div class="wrap-login100">
						<div class="container">
							<div class="login-form">
								<h2>Đăng ký tài khoản</h2>

								<div class="wrap-input100 validate-input">
									<input class="input100" type="text" name="studentid" id="studentid"
										placeholder="Nhập MSSV" required> <span
										class="focus-input100"></span>
								</div>
								<p class="m-b-40 fs-14" id="studentIdError" style="color: red; display: none;">Mã sinh viên đã tồn tại.</p>
								<p class="m-b-40 fs-14" id="studentIdError10word" style="color: red; display: none;">Phải đủ 10 ký tự.</p>


								<div class="wrap-input100 validate-input">
									<input class="input100" type="text" name="username"
										placeholder="Nhập họ và tên" required> <span
										class="focus-input100"></span>
								</div>

								<div class="wrap-input100 validate-input"
									data-validate="Enter password">
									<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i></span>
									<input id="password" class="input100" type="password"
										name="password" placeholder="Nhập mật khẩu" required>
									<span class="focus-input100"></span>
								</div>

								<div class="wrap-input100 validate-input"
									data-validate="Confirm password">
									<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i></span>
									<input id="confirmPassword" class="input100" type="password"
										name="confirmPass" placeholder="Xác nhận mật khẩu" required>
									<span class="focus-input100"></span>
								</div>

								<p class="m-b-40 fs-14" id="passwordMatchError"
									style="color: red; display: none;">Xác nhận mật khẩu không
									khớp!</p>
									
								<script>
								
								</script>

								<div class="wrap-input100 validate-input" data-validate="Valid email is: a@b.c">
									<input class="input100" type="email" id="email" name="email" placeholder="Nhập Email (Hãy dùng Email Sinh viên)" required>
									<span class="focus-input100"></span>
								</div>

								<p class="m-b-40 fs-14" id="emailMatchError"
									style="color: red; display: none;">Hãy sử dụng Email Sinh viên. (example@ut.edu.vn)</p>
								<p class="m-b-40 fs-14" id="emailError"
									style="color: red; display: none;">Email đã tồn tại.</p>
							</div>
							
						</div>
					</div>


					<div class="wrap-login100 m-l-10" style="width : 70%;">
						<div class="login-form" style="max-width : 100%;">
							<h2>Thông tin cá nhân</h2>
							<div class="container-index">
								<div class="columnleft-container p-r-10" style="width : 50%;">

									<div class="combobox m-b-25" style="width : 105%;">
									<h4 class="fs-14 m-l-10 m-b-5">Khoa/Viện:</h4>
										<select id="selectKhoa" name="selectedKhoa" required>
										<option value="" disabled selected>Select an option</option>
										<option <% if ("Khoa Công nghệ thông tin".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Khoa Công nghệ thông tin</option>
										<option <% if ("Khoa Điện - Điện tử viễn thông".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Khoa Điện - Điện tử viễn thông</option>
										<option <% if ("Khoa Kinh tế vận tải".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Khoa Kinh tế vận tải</option>
										<option <% if ("Viện Cơ khí".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Viện Cơ khí</option>
										<option <% if ("Viện Đào tạo Chất lượng cao".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Viện Đào tạo Chất lượng cao</option>
										<option <% if ("Viện Đào tạo và hợp tác quốc tế".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Viện Đào tạo và hợp tác quốc tế</option>
										<option <% if ("Viện Hàng hải".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Viện Hàng hải</option>
										<option <% if ("Viện Ngôn ngữ và Khoa học xã hội".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Viện Ngôn ngữ và Khoa học xã hội</option>
										<option <% if ("Viện Xây dựng".equals(request.getParameter("selectedKhoa"))) out.print("selected"); %>>Viện Xây dựng</option>
									</select>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="phonenumber" placeholder="Số điện thoại của bạn" required>
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="dateofbirth" placeholder="Ngày sinh (DD-MM-YYYY)" required>
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="sex" placeholder="Giới tính (Nam/Nữ)" required>
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="nation" placeholder="Dân tộc" required>
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="religion" placeholder="Tôn giáo (Không bắt buộc)">
										<span class="focus-input100"></span>
									</div>
								</div>
								
								<div class="columnright-container p-l-10" style="width : 50%;">
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="permanentaddress" placeholder="Địa chỉ thường trú" required>
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="address" placeholder="Địa chỉ tạm trú" required>
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="uniondayjoining" placeholder="Ngày vào Đoàn (Không bắt buộc)">
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="dangdayjoiningre" placeholder="Ngày vào Đảng (Dự bị) (Không bắt buộc)">
										<span class="focus-input100"></span>
									</div>
									
									<div class="wrap-input100 validate-input">
										<input class="input100" type="text" name="dangdayjoining" placeholder="Ngày vào Đảng (Chính thức) (Không bắt buộc)">
										<span class="focus-input100"></span>
									</div>

									<div class="combobox" style="width : 105%;">
									<h4 class="fs-14 m-l-10 m-b-5">Danh hiệu:</h4>
										<select id="selectDanhHieu" name="selectedDanhHieu" required>
											<option value="" disabled selected>Chọn danh hiệu đăng ký</option>
											<option <% if ("Sinh viên 5 tốt".equals(request.getParameter("selectedDanhHieu"))) out.print("selected"); %>>Sinh viên 5 tốt</option>
										</select>
									</div>
								</div>
							</div>
							
						</div>
						
					</div>
				</div>

				<div class="wrap-login100-form-btn m-t-20 m-b-5 m-r-30" style="width: 250px;">
					<div class="login100-form-bgbtn"></div>
					<button class="login100-form-btn">Đăng ký</button>
				</div>
			</form>
		</div>
	</div>
	<script>
	function setupDuplicateCheck(inputElementId, errorElementId, inputParameter, url) {
	    var inputElement = document.getElementById(inputElementId);
	    var errorElement = document.getElementById(errorElementId);

	    var checkDuplicate = function() {
	        var inputValue = inputElement.value;

	        var xhr = new XMLHttpRequest();
	        xhr.open("POST", url, true);
	        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	        xhr.onreadystatechange = function() {
	            if (xhr.readyState === XMLHttpRequest.DONE) {
	                if (xhr.status === 200) {
	                    if (xhr.responseText === "false" + inputParameter) {
	                        errorElement.style.display = "block";
	                        inputElement.focus();
	                    } else {
	                        errorElement.style.display = "none";
	                    }
	                }
	            }
	        };
	        xhr.send(inputParameter + "=" + inputValue);
	    };

	    inputElement.addEventListener("input", function() {
	        errorElement.style.display = "none";
	    });

	    inputElement.addEventListener("blur", checkDuplicate);

	    var form = inputElement.closest("form");
	    if (form) {
	        form.addEventListener("submit", function(event) {
	            checkDuplicate();
	            // You can prevent form submission if needed
	            // event.preventDefault();
	        });
	    }
	}

	document.addEventListener("DOMContentLoaded", function() {
	    setupDuplicateCheck("studentid", "studentIdError", "studentid", "CheckDuplicate");
	    setupDuplicateCheck("email", "emailError", "email", "CheckDuplicateEmail");
	});


    
    document.addEventListener("DOMContentLoaded", function() {
	    var passwordInput = document.getElementById("password");
	    var confirmPasswordInput = document.getElementById("confirmPassword");
	    var passwordMatchError = document.getElementById("passwordMatchError");

	    var emailInput = document.getElementById("email");
	    var emailMatchError = document.getElementById("emailMatchError");
	    var registerButton = document.querySelector(".login100-form-btn");

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

	    function validateEmail() {
	        var email = emailInput.value;
	        var lastTenCharacters = email.slice(-10);

	        if (lastTenCharacters !== "@ut.edu.vn") {
	            emailMatchError.style.display = "block";
	        } else {
	            emailMatchError.style.display = "none";
	        }
	    }
	    emailInput.addEventListener("input", validateEmail);
	    registerButton.addEventListener("click", function(event) {
	        if (passwordMatchError.style.display === "block" || emailMatchError.style.display === "block" || studentIdError.style.display === "block") {
	            event.preventDefault(); // Ngăn chặn hành động mặc định của nút đăng ký
	        }
	    });
	});
	</script>
	<script>
	document.addEventListener('DOMContentLoaded', function() {
	    const studentIdInput = document.getElementById('studentid');
	    const studentIdError = document.getElementById('studentIdError10word');
	
	    studentIdInput.addEventListener('input', function() {
	        const studentIdValue = studentIdInput.value;
	
	        const hasValidLength = studentIdValue.length === 10 || studentIdValue.length === 12 || (studentIdValue.length === 10 && studentIdValue.indexOf('h') !== -1);
	        const hasValidFormat = /^\d+$/.test(studentIdValue) || (studentIdValue.length === 10 && studentIdValue.indexOf('h') !== -1);
	
	        if (!hasValidLength || !hasValidFormat) {
	            studentIdError.style.display = 'block';
	        } else {
	            studentIdError.style.display = 'none';
	        }
	    });
	});
	</script>

</body>
</html>

