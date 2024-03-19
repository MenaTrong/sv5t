<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="context.UserDTO" %>
<%
	session.setAttribute("previousUrl", "ListSignUpController");
	if (session.getAttribute("USER") == null) {
	    response.sendRedirect("login.jsp");
	} else {
		UserDTO user = (UserDTO) session.getAttribute("USER");
		if (!(user.getLevel().equals("0"))) {
			response.sendRedirect("HomeController");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
	<title>Quản lý tài khoản</title>
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/4.0.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" href="CSS/style01.css">
	<link rel="stylesheet" href="CSS/style02.css">
	<link rel="stylesheet" href="CSS/util.css">
	<script src="JS/script.js"></script>
</head>
<style>

</style>
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
					<h1 class="text-white fs-25 m-t-33 m-l-40">Thông tin tài khoản</h1>
				</div>

				<div class="columnright-part">
					<form method="get" action="ManageAccountController">
					<div class="m-t-20 m-r-20 m-l-20" style="width : calc(60% - 40px);">
						<div class="textbox" style="height : 36px; padding: 1px;">
							<div class="container-index">
								<div class="input-group-prepend">
									<span class="input-group-text bg-transparent border-0">
									<i class="fa fa-search m-l-5 text-silver"></i>
									</span>
								</div>
							
								<input type="text" class="form-control border-0 fs-16 m-l-5"
									placeholder="Tìm kiếm..." name="txtsearch">
							</div>
						</div>
					</div>
					</form>
					<div class="framewhite m-l-10">
						<div class="table-container p-t-5 p-b-20">
							<table class="data-table">
								<thead>
									<tr>
										<th>UserID</th>
										<th>Tên tài khoản</th>
										<th>Tên người dùng</th>
										<th>Mật khẩu</th>
										<th>Email</th>
										<th>Cập nhật</th>
									</tr>
								</thead>
								<tbody id="table-body">
									<!-- Dữ liệu sẽ được thêm vào đây sau khi bấm nút "Xem" -->
									<c:forEach var="o" items="${alluser}">
										<tr class="text-center">
											<td>${o.userID}</td>
											<td>${o.studentID}</td>
											<td>${o.userName}</td>
											<td>${o.password}</td>
											<td>${o.email}</td>
											<td>
												<a id="openModal${o.userID}" class="dec fas fa-pencil-alt text-silver"></a>
												<div id="myModal${o.userID}" class="modal">
												  <div class="modal-content">
												    <!-- Nội dung của cửa sổ modal -->
												    <form id="updateForm${o.userID}" action="UpdateAccountController" method="post">
												    <h4 class="text-left fs-15 text-silver-2 m-l-10 m-b-5">UserID:</h4>
													<div class="textbox sizetextbox-450">
													<input name="userID" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${o.userID}" readonly>
													</div>
													 <h4 class="text-left fs-15 text-silver-2 m-l-10 m-b-5">Tên tài khoản:</h4>
													<div class="textbox sizetextbox-450">
														<input name="studentID" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${o.studentID}" readonly>
													</div>
													 <h4 class="text-left fs-15 text-silver-2 m-l-10 m-b-5">Tên người dùng:</h4>
													<div class="textbox sizetextbox-450">
														<input name="userName" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${o.userName}">
													</div>
													 <h4 class="text-left fs-15 text-silver-2 m-l-10 m-b-5">Mật khẩu:</h4>
													<div class="textbox sizetextbox-450">
														<input name="password" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${o.password}">
													</div>
													 <h4 class="text-left fs-15 text-silver-2 m-l-10 m-b-5">Email:</h4>
													<div class="textbox sizetextbox-450">
														<input name="email" class="fs-15 text-silver-2 m-l-10 m-b-5" type="text" value="${o.email}">
													</div>
													<button type="submit" class="buttonblue m-r-20" style="width: 90px;">Cập nhật</button>
												    <button type="button" class="buttonblue m-l-20" id="closeModal${o.userID}">Đóng</button>
												    </form>
												  </div>
												</div>
												<script>
												</script>


												
												<script>
												document.getElementById("openModal${o.userID}").addEventListener("click", function() {
												  // Hiển thị cửa sổ modal khi người dùng nhấp vào liên kết
												  document.getElementById("myModal${o.userID}").style.display = "block";
												});
												
												document.getElementById("closeModal${o.userID}").addEventListener("click", function() {
												  // Đóng cửa sổ modal khi người dùng nhấp vào nút Đóng
												  document.getElementById("myModal${o.userID}").style.display = "none";
												});
											</script>
												<a href="DeleteAccount?studentID=${o.studentID}" class="dec fas fa-trash text-silver"onclick="return confirm('Bạn có chắc muốn xóa tài khoản này?')"></a>
												<a href="UnlockAccountController?studentID=${o.studentID}" class="dec fas fa-unlock text-silver" onclick="return confirm('Bạn có chắc muốn mở khoá tài khoản này?')"></a>
											</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
			
		</div>
		
	</div>
</body>
</html>