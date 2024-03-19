<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("USER") == null) {
		response.sendRedirect("login.jsp"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
	}
%>
<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
	<title>Trang chủ</title>
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/4.0.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" href="CSS/style01.css">
	<link rel="stylesheet" href="CSS/style02.css">
	<link rel="stylesheet" href="CSS/util.css">
	<script type="text/javascript">
	var studentID = ${Profile.studentID};
	</script>
	<script src="JS/script.js"></script>
</head>
<body>
	<div class="bg-silver" style="height: ${Profile.level == '0' || Profile.level == '1' ? '100%' : 'auto'};">
		<div class="bg-white">
			<div class="container">
				<div class="m-t-20 p-l-20">
				
					<a href="HomeController"><img class="img-index" src="Image/Logo_UTH.png" alt="#" /></a>
					<a class="dec container-headergear p-r-30" href="#"><i class="fa fa-gear" aria-hidden="true"></i></a>
					
					<div class="dec container-headeruser p-r-30 dropdown">
						<a href="#" class="dropdown-toggle dec fa fa-user useritem" aria-hidden="true"><span class="username" style="font-family: Poppins-Regular, sans-serif;"> ${UNQTV}</span></a>
						<div class="dropdown-menu active">
							<ul>
								<li><a class="dec text-black" href="changepassword.jsp">Đổi mật khẩu</a></li>
								<li><a class="dec text-black" href="HomeController">Thông tin cá nhân</a></li>
								<li><a class="dec text-black" href="LogoutController">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>


		<div class="container-index">
			<div class="columnleft-index" style="width: 280px;">

				<div class="circle-frame m-t-40 text-center">
					<img src="Image/Logo_UTH.png" alt="#" />
				</div>
				
				<h1 class="text-center fs-16 m-t-10">Trường Đại học Giao thông vận tải TP.HCM</h1>
				
				<div class="text-center m-t-10">
					<a class="dec fs-15 text-silver" href="changepassword.jsp">Đổi mật khẩu</a>
				</div>

				<div class="text-center m-t-10">
					<a class="dec fs-15 text-silver" href="LogoutController">Đăng xuất</a>
				</div>

				<div class="columnright-part-2 m-t-10"></div>

				<div class="m-l-15">
					<a class="dec fs-16 text-Black" href="Image/SV5T.pdf" target="_blank">Xem tiêu chí</a>
				</div>
				
				<div class="columnright-part-2 m-t-10 m-r-20 m-l-10" style="width : calc(100% - 40px); height : 2px;"></div>
				
				<c:if test="${sessionScope.USER.level == '0' || sessionScope.USER.level == '1'}">
					
					<div class="m-t-5 m-l-15">
						<a class="dec fs-16 text-Black" href="ListSignUpController">Xem danh sách đăng ký</a>
					</div>
					
					<div class="columnright-part-2 m-t-10 m-r-20 m-l-10" style="width : calc(100% - 40px); height : 2px;"></div>
					
					<div class="m-t-5 m-l-15">
						<a class="dec fs-16 text-Black" href="NewFile.jsp" target="_blank">Danh sách tệp</a>
					</div>
					
					<div class="columnright-part-2 m-t-10 m-r-20 m-l-10" style="width : calc(100% - 40px); height : 2px;"></div>
					
				</c:if>
				
				<div class="m-t-5 m-l-15">
					<a class="dec fs-16 text-Black" href="ManageAccountController">Quản lý tài khoản</a>
				</div>
				
				<div class="columnright-part-2 m-t-10 m-r-20 m-l-10" style="width : calc(100% - 40px); height : 2px;"></div>

				<div class="m-t-20 m-r-10 m-l-10" style="width : calc(100% - 20px);">
					<div class="textbox" style="height : 36px; padding: 1px;">
						<div class="container-index">
					
							<div class="input-group-prepend">
								<span class="input-group-text bg-transparent border-0">
								<i class="fa fa-search m-l-5 text-silver"></i>
								</span>
							</div>
						
							<input type="text" class="form-control border-0 fs-16 m-l-5"
								placeholder="Tìm kiếm...">
						</div>
					</div>
				</div>
			</div>


			<div class="columnright-container">
			
				<div class="columnright-title">
					<h1 class="text-white fs-25 m-t-33 m-l-40">Thông tin hồ sơ</h1>
				</div>
				
				<div class="m-t-30 m-b-30">
				
					<div class="circle-frame m-l-70 p-b-5">
						<h1 class="fs-93 fa fa-user useritem"></h1>
					</div>
					
					<h1 class="fs-30 text-raw p-t-10 p-l-70">${Profile.userName}</h1>

					
					<div class="container-index">
						<div class="columnright-container">
							<c:if test="${Profile.level != '0' && Profile.level != '1'}">
								<div class="container-combobox">
							
									<div class="flex p-t-10">
										<h1 class="fs-16 text-silver-2 p-l-70">Đơn vị xét duyệt:</h1>
									</div>
									
									<div class="flex p-t-10 p-l-150">
										<input type="checkbox" id="myCheckbox" class="checkbox" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
										<label for="myCheckbox" class="checkbox-label"></label>
										<div class="m-t-10 m-l-150 disabled-overlay"></div>
									</div>
									
								</div>
								
								<div class="container-combobox">
							
									<div class="flex p-t-10">
										<h1 class="fs-16 text-silver-2 p-l-70">Khoa xét duyệt:</h1>
									</div>
									
									<div class="flex p-t-10 p-l-150">
										<input type="checkbox" id="myCheckboxDepartment" class="checkbox" ${sessionScope.USER.level != '1' ? 'disabled' : ''}>
										<label for="myCheckboxDepartment" class="checkbox-label"></label>
										<div class="m-t-10 m-l-150 disabled-overlay"></div>
									</div>
									
								</div>
							</c:if>
							
							<c:if test="${Profile.level == '0'}">
								<div class="container-combobox">
								
									<div class="flex p-t-10">
										<h1 class="fs-16 text-silver-2 p-l-70">Ngừng chỉnh sửa:</h1>
									</div>
									
									<div class="flex p-t-10 p-l-150">
										<input type="checkbox" id="myCheckboxEdit" class="checkboxedit disable" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
										<label for="myCheckboxEdit" class="checkboxedit-label"></label>
									</div>
									
								</div>
							</c:if>
						</div>
					</div>
					
					<script>
					// Lấy giá trị từ MySQL
					var theEditing = "${ValueTheEditing}";
					// Lấy các phần tử checkbox
					var checkboxedit = document.getElementById("myCheckboxEdit");
					// Đánh dấu checkbox tương ứng
					if (theEditing === "1") {
						checkboxedit.checked = true;
					} else if (theEditing === "0") {
						checkboxeditValue.checked = false;
					}
					</script>
					
					<c:if test="${Profile.level != '0' && Profile.level != '1'}">
					<script>
					// Lấy giá trị từ MySQL
					var confirmleveldepartment = "${Profile.confirmLevelDepartment}";
					// Lấy các phần tử checkbox
					var checkboxdepartment = document.getElementById("myCheckboxDepartment");
					// Đánh dấu checkbox tương ứng
					if (confirmleveldepartment === "1") {
						checkboxdepartment.checked = true;
					} else if (confirmleveldepartment === "0") {
						checkboxdepartment.checked = false;
					}
					</script>
					</c:if>
					
					<script>
						// Lắng nghe sự kiện click của checkbox
						document.getElementById("myCheckboxEdit").addEventListener("click", function() {
				        // Lấy giá trị của ô checkbox (1 nếu tích, 0 nếu không tích)
				        var checkboxeditValue = this.checked ? "1" : "0";
				        window.location.href = "UpdateTheEditingController?checkboxeditValue=" + checkboxeditValue;
    					});

					    // Lắng nghe sự kiện "change" của checkbox để bắt sự thay đổi trạng thái của checkbox khi được tích hoặc bỏ tích
					    document.getElementById("myCheckboxEdit").addEventListener("change", function() {
					    // Lấy giá trị của ô checkbox (1 nếu tích, 0 nếu không tích)
					    var checkboxeditValue = this.checked ? "1" : "0";
					    window.location.href = "UpdateTheEditingController?checkboxeditValue=" + checkboxeditValue;
   	 					});
					</script>
					
					<script>
						// Lắng nghe sự kiện click của checkbox
						document.getElementById("myCheckbox").addEventListener("click", function() {
				        // Lấy giá trị của ô checkbox (1 nếu tích, 0 nếu không tích)
				        var checkboxValue = this.checked ? "1" : "0";
				        // Lấy giá trị studentID từ đối tượng Profile
				        // Chuyển hướng người dùng đến trang mới và sử dụng cùng giá trị của ô checkbox và studentID
				        window.location.href = "UpdateConfirmController?checkboxValue=" + checkboxValue + "&studentID=" + studentID;
    					});

					    // Lắng nghe sự kiện "change" của checkbox để bắt sự thay đổi trạng thái của checkbox khi được tích hoặc bỏ tích
					    document.getElementById("myCheckbox").addEventListener("change", function() {
					    // Lấy giá trị của ô checkbox (1 nếu tích, 0 nếu không tích)
					    var checkboxValue = this.checked ? "1" : "0";
					    // Lấy giá trị studentID từ đối tượng Profile
					    // Chuyển hướng người dùng đến trang mới và sử dụng cùng giá trị của ô checkbox và studentID
					    window.location.href = "UpdateConfirmController?checkboxValue=" + checkboxValue + "&studentID=" + studentID;
   	 					});
					</script>
					<c:if test="${Profile.level != '0' && Profile.level != '1'}">
					<script>
					// Lấy giá trị từ MySQL
					var confirm = "${Profile.confirm}";
					// Lấy các phần tử checkbox
					var checkbox = document.getElementById("myCheckbox");
					// Đánh dấu checkbox tương ứng
					if (confirm === "1") {
						checkbox.checked = true;
					} else if (confirm === "0") {
						checkbox.checked = false;
					}
					</script>
					</c:if>
					<script>
						// Lắng nghe sự kiện click của checkbox
						document.getElementById("myCheckboxDepartment").addEventListener("click", function() {
				        // Lấy giá trị của ô checkbox (1 nếu tích, 0 nếu không tích)
				        var checkboxdepartmentValue = this.checked ? "1" : "0";
				        // Lấy giá trị studentID từ đối tượng Profile
				        // Chuyển hướng người dùng đến trang mới và sử dụng cùng giá trị của ô checkbox và studentID
				        window.location.href = "UpdateConfirmLevelDepartmentController?checkboxdepartmentValue=" + checkboxdepartmentValue + "&studentID=" + studentID;
    					});

					    // Lắng nghe sự kiện "change" của checkbox để bắt sự thay đổi trạng thái của checkbox khi được tích hoặc bỏ tích
					    document.getElementById("myCheckboxDepartment").addEventListener("change", function() {
					    // Lấy giá trị của ô checkbox (1 nếu tích, 0 nếu không tích)
					    var checkboxdepartmentValue = this.checked ? "1" : "0";
					    // Lấy giá trị studentID từ đối tượng Profile
					    // Chuyển hướng người dùng đến trang mới và sử dụng cùng giá trị của ô checkbox và studentID
					    window.location.href = "UpdateConfirmLevelDepartmentController?checkboxdepartmentValue=" + checkboxdepartmentValue + "&studentID=" + studentID;
   	 					});
					</script>
					
					
					
				</div>
				
				
				<c:if test="${Profile.level != '0' && Profile.level != '1'}">
					<div class="columnright-part">
						<h1  class="fs-20 m-t-28 m-l-40 m-b-28">
							<a class="dec" onclick="toggleDropdown()">Xếp loại hồ sơ: <span id="h1Container" class="highlight"></span></a>
							
						</h1>
						<h1 id="h1Container"></h1>
						<div id="dropdown" class="dropdown-content p-l-20">
							<!-- Nội dung khung trắng -->
						</div>
					</div>
				
				
				
					<div class="columnright-part">
					
						<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
							<a class="dec" onclick="toggleDropdown1()">Thông tin chung</a>
						</h1>
						
						<div id="dropdown1" class="dropdown-content p-l-20">
						
							<!-- Nội dung khung trắng -->
							<div class="container-index p-l-35">
								<div class="columnright-container">
								
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Họ và tên:</h4>
									<div class="textbox sizetextbox-450">
										<input id="userName" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.userName}">
									</div>
	
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Số điện thoại liện hệ:</h4>
									<div class="textbox sizetextbox-450">
										<input id="phoneNumber" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.phoneNumber}">
									</div>
	
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Dân tộc:</h4>
									<div class="textbox sizetextbox-450">
										<input id="nation" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.nation}">
									</div>
	
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5 m-t-20">Địa chỉ thường trú:</h4>
									<div class="textbox sizetextbox-450">
										<input id="permanentAddress" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.permanentAddress}">
									</div>
								</div>
	
								<div class="columnright-container">
								
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Email:</h4>
									<div class="textbox sizetextbox-450">
										<input id="email" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.email}">
									</div>
	
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Ngày tháng năm sinh:</h4>
									<div class="container-index">
										<div class="textbox sizetextbox-250">
											<input id="dateOfBirth" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.dateOfBirth}">
										</div>
	
										<div class="container-index m-t-10">
										
											<h4 class="fs-15 text-silver-2 text-center m-l-25">Giới tính:</h4>
											
											<div class="container-index">
												<h4 class="fs-15 text-silver-2 m-l-10 m-r-5">Nam</h4>
												<input type="checkbox" id="myCheckbox-1" class="checkbox-1" onclick="handleCheckboxClick(this)">
												<label for="myCheckbox-1" class="checkbox-label-1"></label>
											</div>
											
											<div class="container-index">
												<h4 class="fs-15 text-silver-2 m-l-10 m-r-5">Nữ</h4>
												<input type="checkbox" id="myCheckbox-2" class="checkbox-2" onclick="handleCheckboxClick(this)">
												<label for="myCheckbox-2" class="checkbox-label-2"></label>
											</div>
										</div>
										
										<script type="text/javascript">
											// Lấy giá trị từ MySQL
											var sex = "${Profile.sex}";
											// Lấy các phần tử checkbox
											var checkboxNam = document.getElementById("myCheckbox-1");
											var checkboxNu = document.getElementById("myCheckbox-2");
											// Đánh dấu checkbox tương ứng
											if (sex === "Nam") {
												checkboxNam.checked = true;
											} else if (sex === "Nữ") {
												checkboxNu.checked = true;
											}
										</script>
									</div>
	
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Tôn giáo:</h4>
									<div class="textbox sizetextbox-450">
										<input id="religion" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.religion}">
									</div>
	
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Địa chỉ liên lạc:</h4>
									<div class="textbox sizetextbox-450">
										<input id="address" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.address}">
									</div>
	
								</div>
							</div>
	
							<div class="container-index p-b-50 p-l-35">
							
								<div class="columnright-container m-r-35">
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Ngày kết nạp Đoàn:</h4>
									<div class="textbox">
										<input id="unionJoining" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.unionJoining}">
									</div>
								</div>
								
								<div class="columnright-container m-r-35">
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Ngày kết nạp Đảng(Dự bị):</h4>
									<div class="textbox">
										<input id="joiningDangReserve" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.joiningDangReserve}">
									</div>
								</div>
								
								<div class="columnright-container p-r-95">
									<h4 class="fs-15 text-silver-2 m-l-10 m-b-5">Ngày kết nạp Đảng(Chính thức):</h4>
									<div class="textbox">
										<input id="joiningDang" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${Profile.joiningDang}">
									</div>
								</div>
								
							</div>
						</div>
					</div>
				
				
				<div class="columnright-part">
					<div class="container-index">
					
						<div class="columnright-container" style="width: 200px;">
							<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
								<a class="dec" onclick="toggleDropdown2()">Đạo đức tốt</a>
							</h1>
						</div>
						
						<div class="columnright-container" style="width: 100%;">
							<div class="combobox sizetextbox-100 m-t-20 m-l-40">
								<select id="select1" onchange="handleChange1()" name="selected1" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
									<option value="" disabled selected>--</option>
										<option value="option1" ${Assess.assessTittle01 == 'Đạt' ? 'selected' : ''}>Đạt</option>
	        							<option value="option2" ${Assess.assessTittle01 == 'Chưa đạt' ? 'selected' : ''}>Chưa đạt</option>
								</select>
							</div>
						</div>
						
						<script>
						document.getElementById("select1").addEventListener("change", function() {
						    var selectedIndex = this.selectedIndex;
						    var selectedValue = this.options[selectedIndex].text;
						    var studentID = "${Profile.studentID}";
						    var xhr = new XMLHttpRequest();
						    xhr.open("POST", "UpdateAssessController", true);
						    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						    xhr.onreadystatechange = function() {
						        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
						            console.log("Yêu cầu đã được gửi thành công!");
						        } else {
						            console.error("Lỗi khi gửi yêu cầu!");
						        }
						    };
						    var formData = "studentID=" + encodeURIComponent(studentID) + "&comboboxValuetittle01=" + encodeURIComponent(selectedValue);
						    xhr.send(formData);
						});
						</script>
					</div>

					<div id="dropdown2" class="dropdown-content p-l-20">
					
						<!-- Nội dung khung trắng -->
						<div class="container-index p-l-35 m-b-50">
							<div class="columnright-container" style="width: 100%;">
							
								<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;">Không vi phạm pháp
									luật và các quy chế, nội quy của trường, lớp, quy định của địa
									phương cư trú và những nơi công cộng.</h4>
									
								<textarea class="disable" id="content0101" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								<script>
									var textarea = document.getElementById('content0101');
									var content = "${Content.tittle0101}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
									type="file" name="attachTittle0101" id="attachTittle0101" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle0101}" target="_blank">${Attachment.attachTittle0101}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>
								
								<div class="m-l-10 m-b-10 m-t-20" style="height : 38px">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<button id="saveButton0101" class="buttonblue disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
									</c:if>
								</div>

									<h4 class="fs-14 text-silver-2 m-b-5 m-t-30"
									style="width: 95%; font-weight: bold;">Đánh giá chất lượng
									Đoàn viên cuối năm (đối với hội viên là đoàn viên) đạt Hoàn
									thành xuất sắc nhiệm vụ. Đối với đơn vị có đánh giá chất lượng
									hội viên thì kết quả đánh giá chất lượng cũng phải đạt Hoàn
									thành xuất sắc nhiệm vụ.</h4>
									
								<textarea class="disable" id="content0102" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content0102');
									var content = "${Content.tittle0102}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle0102" id="attachTittle0102" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle0102}" target="_blank">${Attachment.attachTittle0102}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>
								
								<div class="m-l-10 m-b-10 m-t-20" style="height : 38px">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<button id="saveButton0102" class="buttonblue disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
									</c:if>
								</div>
									
									<h4 class="fs-14 text-silver-2 m-b-5 m-t-30"
									style="width: 95%; font-weight: bold;">Điểm rèn luyện
									trung bình cả năm học đạt từ 80/100 điểm trở lên và không có
									học kỳ nào trong năm có điểm rèn luyện dưới 70 điểm.</h4>
									
								<textarea class="disable" id="content0103" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content0103');
									var content = "${Content.tittle0103}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle0103" id="attachTittle0103" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle0103}" target="_blank">${Attachment.attachTittle0103}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>
								
								<div class="m-l-10 m-b-10 m-t-20" style="height : 38px">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<button id="saveButton0103" class="buttonblue disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
									</c:if>
								</div>
								</div>
								

							<c:if test="${sessionScope.USER.level == '0' || Profile.confirm != '0'}">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-15"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên:</h4>
								
								<textarea class="disable" id="comment0101" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment0101');
									var comment = "${Comment.commentTittle0101}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<div class="m-l-10 m-t-20" style="height : 38px">
										<c:if test="${sessionScope.USER.level == '0'}">
											<button id="saveAdminButton0101" class="buttonblue">Lưu</button>
										</c:if>
									</div>
								</div>
									
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-137"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên:</h4>
								
								<textarea class="disable" id="comment0102" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment0102');
									var comment = "${Comment.commentTittle0102}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<div class="m-l-10 m-t-20" style="height : 38px">
										<c:if test="${sessionScope.USER.level == '0'}">
											<button id="saveAdminButton0102" class="buttonblue">Lưu</button>
										</c:if>
									</div>
								</div>
									
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-105"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên:</h4>
								
								<textarea class="disable" id="comment0103" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								<script>
									var textarea = document.getElementById('comment0103');
									var comment = "${Comment.commentTittle0103}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<div class="m-l-10 m-t-20" style="height : 38px">
										<c:if test="${sessionScope.USER.level == '0'}">
											<button id="saveAdminButton0103" class="buttonblue">Lưu</button>
										</c:if>
									</div>
								</div>
							</div>
							</c:if>
						</div>
					</div>
				</div>
				
				
				<div class="columnright-part">
					<div class="container-index">
						
						<div class="columnright-container" style="width: 200px;">
							<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
								<a class="dec" onclick="toggleDropdown3()">Học tập tốt</a>
							</h1>
						</div>
						
						<div class="columnright-container" style="width: 100%;">
							<div class="combobox sizetextbox-100 m-t-20 m-l-40">
								<select id="select2" onchange="handleChange1()" name="selected2" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
									<option value="" disabled selected>--</option>
										<option value="option1" ${Assess.assessTittle02 == 'Đạt' ? 'selected' : ''}>Đạt</option>
        								<option value="option2" ${Assess.assessTittle02 == 'Chưa đạt' ? 'selected' : ''}>Chưa đạt</option>
								</select>
							</div>
						</div>
						
						<script type="text/javascript">
						document.getElementById("select2").addEventListener("change", function() {
						    var selectedIndex = this.selectedIndex;
						    var selectedValue = this.options[selectedIndex].text;
						    var studentID = "${Profile.studentID}";
						    var xhr = new XMLHttpRequest();
						    xhr.open("POST", "UpdateAssessController", true);
						    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						    xhr.onreadystatechange = function() {
						        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
						            console.log("Yêu cầu đã được gửi thành công!");
						            // Xử lý phản hồi từ server nếu có
						        } else {
						            console.error("Lỗi khi gửi yêu cầu!");
						        }
						    };
						    var formData = "studentID=" + encodeURIComponent(studentID) + "&comboboxValuetittle02=" + encodeURIComponent(selectedValue);
						    xhr.send(formData);
						});
						</script>
					</div>


					<div id="dropdown3" class="dropdown-content p-l-20">
					
						<!-- Nội dung khung trắng -->
						<div class="container-index p-l-35 m-b-50">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;">Không gian lận
									trong thi cử, không bị điểm F hoặc F+ tất cả các học phần trong
									năm học.</h4>
									
								<textarea class="disable" id="content0201" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content0201');
									var content = "${Content.tittle0201}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle0201" id="attachTittle0201" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle0201}" target="_blank">${Attachment.attachTittle0201}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>

								<div class="m-l-10 m-b-10 m-t-20" style="height : 38px">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<button id="saveButton0201" class="buttonblue disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
									</c:if>
								</div>
								
								
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-30"
									style="width: 95%; font-weight: bold;">Đối với sinh viên Khoa
									Kinh tế vận tải, khối ngành kinh tế của Viện Đào tạo Chất lượng
									cao và ngành Quản lý hàng hải của Viện Hàng hải điểm trung bình
									chung cả năm học đạt từ 3.0/4.0 trở lên và điểm tích lũy từ
									2.8/4.0 trở lên.</h4>
								<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;">Đối với các
									khoa/viện còn lại, điểm trung bình chung học tập cả năm học đạt
									từ 2.8/4.0 trở lên và điểm tích lũy từ 2.6/4.0 trở lên.</h4>

								<textarea class="disable" id="content0202" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content0202');
									var content = "${Content.tittle0202}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle0202" id="attachTittle0202" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle0202}"target="_blank">${Attachment.attachTittle0202}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>
								
								<div class="m-l-10 m-b-10 m-t-20">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<button id="saveButton0202" class="buttonblue disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
									</c:if>
								</div>
								
							</div>
							
							<c:if test="${sessionScope.USER.level == '0' || Profile.confirm != '0'}">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-15"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên</h4>

								<textarea class="disable" id="comment0201" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment0201');
									var comment = "${Comment.commentTittle0201}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<div class="m-l-10 m-t-20" style="height : 38px">
										<c:if test="${sessionScope.USER.level == '0' && sessionScope.USER.level != '1'}">
											<button id="saveAdminButton0201" class="buttonblue">Lưu</button>
										</c:if>
									</div>
								</div>
								
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-175"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên</h4>

								<textarea class="disable" id="comment0202" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment0202');
									var comment = "${Comment.commentTittle0202}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<div class="m-l-10 m-t-20" style="height : 38px">
										<c:if test="${sessionScope.USER.level == '0'}">
											<button id="saveAdminButton0202" class="buttonblue">Lưu</button>
										</c:if>
									</div>
								</div>
								
							</div>
							</c:if>
						</div>

					</div>
				</div>
				
				
				
				<div class="columnright-part">
					<div class="container-index">
						
						<div class="columnright-container" style="width: 200px;">
							<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
								<a class="dec" onclick="toggleDropdown4()">Thể lực tốt</a>
							</h1>
						</div>
						
						<div class="columnright-container" style="width: 100%;">
							<div class="combobox sizetextbox-100 m-t-20 m-l-40">
								<select id="select3" onchange="handleChange1()" name="selected3" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
									<option value="" disabled selected>--</option>
										<option value="option1" ${Assess.assessTittle03 == 'Đạt' ? 'selected' : ''}>Đạt</option>
        								<option value="option2" ${Assess.assessTittle03 == 'Chưa đạt' ? 'selected' : ''}>Chưa đạt</option>
								</select>
							</div>
						</div>
						
						<script type="text/javascript">
						document.getElementById("select3").addEventListener("change", function() {
						    var selectedIndex = this.selectedIndex;
						    var selectedValue = this.options[selectedIndex].text;
						    var studentID = "${Profile.studentID}";
						    var xhr = new XMLHttpRequest();
						    xhr.open("POST", "UpdateAssessController", true);
						    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						    xhr.onreadystatechange = function() {
						        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
						            console.log("Yêu cầu đã được gửi thành công!");
						            // Xử lý phản hồi từ server nếu có
						        } else {
						            console.error("Lỗi khi gửi yêu cầu!");
						        }
						    };
						    var formData = "studentID=" + encodeURIComponent(studentID) + "&comboboxValuetittle03=" + encodeURIComponent(selectedValue);
						    xhr.send(formData);
						});
						</script>
					</div>


					<div id="dropdown4" class="dropdown-content p-l-20">
						<!-- Nội dung khung trắng -->
						<div class="container-index p-l-35 m-b-50">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5" style="width: 95%; font-weight: bold;">Đạt 01 trong những tiêu
									chuẩn sau:</h4>
									<h4 class="fs-14 text-silver-2 m-b-5" style="width: 95%; font-weight: bold;"> - Đạt danh hiệu “Thanh niên khỏe” từ cấp Trường trở
									lên hoặc tham gia hoạt động thể thao cấp Thành phố, cấp Trung
									ương.</h4>
									<h4 class="fs-14 text-silver-2 m-b-5" style="width: 95%; font-weight: bold;">- Tham gia và đạt giải tại các hoạt động thể thao từ cấp
									khoa trở lên (trừ các giải thể thao điện tử).</h4>
									<h4 class="fs-14 text-silver-2 m-b-5" style="width: 95%; font-weight: bold;">- Là thành viên tích cực tham gia rèn luyện định kỳ hàng tuần tại 01 Câu lạc bộ
									thể thao (không áp dụng đối với CLB Thể thao điện tử và các đơn
									vị được đánh giá không hoàn thành nhiệm vụ trong năm học).</h4>
								
								<textarea class="disable" id="content03" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content03');
									var content = "${Content.tittle03}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle03" id="attachTittle03" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle03}" target="_blank">${Attachment.attachTittle03}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>

								<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
									<button id="saveButton03" class="buttonblue m-l-10 m-b-10 m-t-20 disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
								</c:if>
								

							</div>
							
							<c:if test="${sessionScope.USER.level == '0' || Profile.confirm != '0'}">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-127"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên:</h4>
								
								<textarea class="disable" id="comment03" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment03');
									var comment = "${Comment.commentTittle03}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<c:if test="${sessionScope.USER.level == '0'}">
										<button id="saveAdminButton03" class="buttonblue m-t-20 disable">Lưu</button>
									</c:if>
								</div>
								
							</div>
							</c:if>
						</div>
					</div>
				</div>
				
				
				<div class="columnright-part">
					<div class="container-index">
						
						<div class="columnright-container" style="width: 280px;">
							<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
								<a class="dec" onclick="toggleDropdown5()">Tình nguyện tốt</a>
							</h1>
						</div>
						
						<div class="columnright-container" style="width: 100%;">
							<div class="combobox sizetextbox-100 m-t-20 m-l-40">
								<select id="select4" onchange="handleChange1()" name="selected4" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
									<option value="" disabled selected>--</option>
										<option value="option1" ${Assess.assessTittle04 == 'Đạt' ? 'selected' : ''}>Đạt</option>
        								<option value="option2" ${Assess.assessTittle04 == 'Chưa đạt' ? 'selected' : ''}>Chưa đạt</option>
								</select>
							</div>
						</div>
						
						<script type="text/javascript">
						document.getElementById("select4").addEventListener("change", function() {
						    var selectedIndex = this.selectedIndex;
						    var selectedValue = this.options[selectedIndex].text;
						    var studentID = "${Profile.studentID}";
						    var xhr = new XMLHttpRequest();
						    xhr.open("POST", "UpdateAssessController", true);
						    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						    xhr.onreadystatechange = function() {
						        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
						            console.log("Yêu cầu đã được gửi thành công!");
						            // Xử lý phản hồi từ server nếu có
						        } else {
						            console.error("Lỗi khi gửi yêu cầu!");
						        }
						    };
						    var formData = "studentID=" + encodeURIComponent(studentID) + "&comboboxValuetittle04=" + encodeURIComponent(selectedValue);
						    xhr.send(formData);
						});
						</script>
					</div>


					<div id="dropdown5" class="dropdown-content p-l-20">
						<!-- Nội dung khung trắng -->
						<div class="container-index p-l-35 m-b-50">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;">Đạt 01 trong những
									tiêu chuẩn sau:</h4>
									<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;"> - Tham gia ít nhất 5 ngày tình nguyện trong năm
									học.</h4>
									<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;">- Được khen thƣởng từ cấp Trường trở lên về hoạt động tình
									nguyện.</h4>
								
								<textarea class="disable" id="content04" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content04');
									var content = "${Content.tittle04}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle04" id="attachTittle04" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle04}" target="_blank">${Attachment.attachTittle04}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>

								<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
									<button id="saveButton04" class="buttonblue m-l-10 m-b-10 m-t-20 disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
								</c:if>
								
							</div>
							
							<c:if test="${sessionScope.USER.level == '0' || Profile.confirm != '0'}">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-42"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên:</h4>
								
								<textarea id="comment04" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment04');
									var comment = "${Comment.commentTittle04}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<c:if test="${sessionScope.USER.level == '0'}">								
										<button id="saveAdminButton04" class="buttonblue m-t-20">Lưu</button>
									</c:if>
								</div>
								
							</div>
							</c:if>
						</div>
					</div>
				</div>
				
				
				<div class="columnright-part">
					<div class="container-index">
						
						<div class="columnright-container" style="width: 220px;">
							<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
								<a class="dec" onclick="toggleDropdown6()">Hội nhập tốt</a>
							</h1>
						</div>
						
						<div class="columnright-container" style="width: 100%;">
							<div class="combobox sizetextbox-100 m-t-20 m-l-40">
								<select id="select5" onchange="handleChange1()" name="selected5" ${sessionScope.USER.level != '0' ? 'disabled' : ''}>
									<option value="" disabled selected>--</option>
										<option value="option1" ${Assess.assessTittle05 == 'Đạt' ? 'selected' : ''}>Đạt</option>
        								<option value="option2" ${Assess.assessTittle05 == 'Chưa đạt' ? 'selected' : ''}>Chưa đạt</option>
								</select>
							</div>
						</div>
						
						<script type="text/javascript">
						document.getElementById("select5").addEventListener("change", function() {
						    var selectedIndex = this.selectedIndex;
						    var selectedValue = this.options[selectedIndex].text;
						    var studentID = "${Profile.studentID}";
						    var xhr = new XMLHttpRequest();
						    xhr.open("POST", "UpdateAssessController", true);
						    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						    xhr.onreadystatechange = function() {
						        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
						            console.log("Yêu cầu đã được gửi thành công!");
						            // Xử lý phản hồi từ server nếu có
						        } else {
						            console.error("Lỗi khi gửi yêu cầu!");
						        }
						    };
						    var formData = "studentID=" + encodeURIComponent(studentID) + "&comboboxValuetittle05=" + encodeURIComponent(selectedValue);
						    xhr.send(formData);
						});
						</script>
					</div>


					<div id="dropdown6" class="dropdown-content p-l-20">
						
						<!-- Nội dung khung trắng -->
						<div class="container-index p-l-35 m-b-50">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5"
									style="width: 95%; font-weight: bold;">Đạt ít nhất 02 trong những tiêu chuẩn sau: Về ngoại ngữ, về tin học, về kĩ năng.</h4>
								
								<textarea class="disable" id="content05" style="height: 300px; width: 95%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level == '0' || sessionScope.USER.level == '1' || Profile.theEditing != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('content05');
									var content = "${Content.tittle05}";
									textarea.value = content;
								</script>
								
								<div class="container-index">
								<div class="columnright-container" style="width: 300%; height : 48px;">
									<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
										<input class="m-t-10 disable styleinput"
										type="file" name="attachTittle05" id="attachTittle05" ${sessionScope.USER.level == '0' || Profile.theEditing != '0' ? 'disabled' : ''} accept="application/pdf">
									</c:if>
								</div>
								
								<div class="columnleft-container" style="width: 100%;">
									<div class="p-l-10 dropdown m-t-18">
										<a href="#" class="dec dropdown-toggle dec useritem" aria-hidden="true"><span class="username">Tệp tải lên</span></a>
										<div class="dropdown-menu active">
											<ul>
												<li><a class="dec text-black" href="Image/${Attachment.attachTittle05}" target="_blank">${Attachment.attachTittle05}</a></li>
											</ul>
										</div>
									</div>
								</div>
								
								</div>

								<c:if test="${sessionScope.USER.level != '0' && sessionScope.USER.level != '1'}">
									<button id="saveButton05" class="buttonblue m-l-10 m-b-10 m-t-20 disable" ${Profile.theEditing != '0' ? 'disabled' : ''}>Lưu</button>
								</c:if>
								
							</div>
							
							<c:if test="${sessionScope.USER.level == '0' || Profile.confirm != '0'}">
							<div class="columnright-container" style="width: 100%;">
								<h4 class="fs-14 text-silver-2 m-b-5 m-t-15"
									style="width: 85%; font-weight: bold;">Phản hồi của hội sinh viên:</h4>
								
								<textarea class="disable" id="comment05" style="height: 300px; width: 85%; border: 1px solid #ccc; padding: 10px; border-radius: 5px;" ${sessionScope.USER.level != '0' ? 'disabled' : ''}></textarea>
								
								<script>
									var textarea = document.getElementById('comment05');
									var comment = "${Comment.commentTittle05}";
									textarea.value = comment;
								</script>
								
								<div class="text-right m-r-90">
									<c:if test="${sessionScope.USER.level == '0'}">
										<button id="saveAdminButton05" class="buttonblue m-t-20">Lưu</button>
									</c:if>
								</div>
								
							</div>
							</c:if>
						</div>
					</div>
				</div>
				</c:if>
				
				
				<c:if test="${Profile.level == '0' || Profile.level == '1'}">
					
					<div class="columnright-part">
						<div class="container-index">
							<div class="columnright-container" style="width: 220px;">
								<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
									<a class="dec">Tổng đăng ký: ${CountListSignUp}</a>
								</h1>
							</div>
						</div>
					</div>
					
					<div class="columnright-part">
						<div class="container-index">
							<div class="columnright-container" style="width: 220px;">
								<h1 class="fs-20 m-t-28 m-l-40 m-b-28">
									<a class="dec">Số đơn đã duyệt: ${CountListSignUpConfirmed}</a>
								</h1>
							</div>
						</div>
					</div>
					
				</c:if>
			</div>
		</div>
	</div>
<script type="text/javascript">
function addSaveContentEventListener(buttonId, contentId, servletUrl) {
    var button = document.getElementById(buttonId);
    button.addEventListener("click", function() {
        var content = document.getElementById(contentId).value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", servletUrl, true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                alert("Lưu nội dung thành công!");
            }
        };
        xhr.send("studentID=" + encodeURIComponent(studentID) + "&" + contentId + "=" + encodeURIComponent(content));
    });
}

addSaveContentEventListener("saveButton0101", "content0101", "SaveContentController");
addSaveContentEventListener("saveButton0102", "content0102", "SaveContentController0102");
addSaveContentEventListener("saveButton0103", "content0103", "SaveContentController0103");
addSaveContentEventListener("saveButton0201", "content0201", "SaveContentController0201");
addSaveContentEventListener("saveButton0202", "content0202", "SaveContentController0202");
addSaveContentEventListener("saveButton03", "content03", "SaveContentController03");
addSaveContentEventListener("saveButton04", "content04", "SaveContentController04");
addSaveContentEventListener("saveButton05", "content05", "SaveContentController05");
</script>
<script type="text/javascript">
function addSaveEventListener(buttonId, commentId, servletUrl) {
    var button = document.getElementById(buttonId);
    button.addEventListener("click", function() {
        var content = document.getElementById(commentId).value;
        var xhr = new XMLHttpRequest();
        xhr.open("POST", servletUrl, true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                alert("Lưu nội dung thành công!");
            }
        };
        xhr.send("studentID=" + encodeURIComponent(studentID) + "&" + commentId + "=" + encodeURIComponent(content));
    });
}

addSaveEventListener("saveAdminButton0101", "comment0101", "SaveCommentController");
addSaveEventListener("saveAdminButton0102", "comment0102", "SaveCommentController0102");
addSaveEventListener("saveAdminButton0103", "comment0103", "SaveCommentController0103");
addSaveEventListener("saveAdminButton0201", "comment0201", "SaveCommentController0201");
addSaveEventListener("saveAdminButton0202", "comment0202", "SaveCommentController0202");
addSaveEventListener("saveAdminButton03", "comment03", "SaveCommentController03");
addSaveEventListener("saveAdminButton04", "comment04", "SaveCommentController04");
addSaveEventListener("saveAdminButton05", "comment05", "SaveCommentController05");

</script>
<script>
function handleFileUpload(saveButtonId, fileInputId, servletUrl) {
    var saveButton = document.getElementById(saveButtonId);
    var fileInput = document.getElementById(fileInputId);

    saveButton.addEventListener("click", function() {
        var file = fileInput.files[0];

        if (!file) {
            return;
        }

        var formData = new FormData();
        formData.append("file", file);

        var xhr = new XMLHttpRequest();
        xhr.open("POST", servletUrl + "?studentID=" + encodeURIComponent(studentID), true);
        xhr.onload = function() {
            if (xhr.status === 200 && xhr.responseText === "Success") {
                console.log("File saved:", xhr.responseText);
                alert("Lưu tệp thành công!");
            } else {
                console.log("Error saving file:", xhr.statusText);
                alert("Đã xảy ra lỗi khi tải lên tệp tin.");
            }
        };
        xhr.onerror = function() {
            console.log("Network error.");
            alert("Đã xảy ra lỗi khi tải lên tệp tin.");
        };
        xhr.send(formData);
    });
}

handleFileUpload("saveButton0101", "attachTittle0101", "UploadFileAttachmentController");
handleFileUpload("saveButton0102", "attachTittle0102", "UploadFileAttachmentController0102");
handleFileUpload("saveButton0103", "attachTittle0103", "UploadFileAttachmentController0103");
handleFileUpload("saveButton0201", "attachTittle0201", "UploadFileAttachmentController0201");
handleFileUpload("saveButton0202", "attachTittle0202", "UploadFileAttachmentController0202");
handleFileUpload("saveButton03", "attachTittle03", "UploadFileAttachmentController03");
handleFileUpload("saveButton04", "attachTittle04", "UploadFileAttachmentController04");
handleFileUpload("saveButton05", "attachTittle05", "UploadFileAttachmentController05");
</script>
</body>
</html>


