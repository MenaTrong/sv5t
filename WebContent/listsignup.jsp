<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="context.UserDTO" %>
<%
	session.setAttribute("previousUrl", "ListSignUpController");
	if (session.getAttribute("USER") == null) {
        response.sendRedirect("login.jsp");
    } else {
    	UserDTO user = (UserDTO) session.getAttribute("USER");
    	if (!(user.getLevel().equals("0") || user.getLevel().equals("1"))) {
    		response.sendRedirect("HomeController");
    	}
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<link rel="icon" href="Image/Logo_Hoi-01.png" type="image/png">
<title>Danh sách đăng ký</title>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="CSS/style01.css">
<link rel="stylesheet" href="CSS/style02.css">
<link rel="stylesheet" href="CSS/util.css">
</head>
<body>
	<div class="bg-silver">
	
		<div class="bg-white">
			<div class="container">
				<div class="m-t-20 p-l-20">
					<a href="HomeController"><img class="img-index" src="Image/Logo_UTH.png" alt="#" /></a>
					<a class="dec container-headergear p-r-30" href="#"><i class="fa fa-gear" aria-hidden="true"></i>
					</a>
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


		<form id="myForm" action="ShowListSignUp">
		<div class="container-index">
			<div class="columnright-container">
				<div class="columnright-title m-l-10">
					<h1 class="text-white fs-25 m-t-33 m-l-40">Danh sách đăng ký</h1>
				</div>

				<div class="framewhite m-l-10 m-r-10">
					<div class="container-index">
						<div class="columnright-container">
							<div class="container-combobox">
								<div class="columnleft-2 p-l-30 p-t-35">
									<h4 class="fs-15 p-r-100">Năm:</h4>
								</div>
								<div class="combobox2 m-t-30">
									<select id="selectNam" name="selectedNam">
										<option value="" disabled selected>Select an option</option>
										<option <% if ("2021".equals(request.getParameter("selectedNam"))) out.print("selected"); %>>2021</option>
										<option <% if ("2022".equals(request.getParameter("selectedNam"))) out.print("selected"); %>>2022</option>
               							<option <% if ("2023".equals(request.getParameter("selectedNam"))) out.print("selected"); %>>2023</option>
                						<option <% if ("2024".equals(request.getParameter("selectedNam"))) out.print("selected"); %>>2024</option>
                						<option <% if ("2025".equals(request.getParameter("selectedNam"))) out.print("selected"); %>>2025</option>
									</select>
								</div>
								<div class="columnleft-2 p-l-30 p-t-35">
									<h4 class="fs-15 p-r-100">Loại hồ sơ:</h4>
								</div>
								<div class="combobox2 m-t-30">
									<select id="selectLoaiHoSo" name="selectedLoaiHoSo">
										<option value="" disabled selected>Select an option</option>
										<option <% if ("Đạt".equals(request.getParameter("selectedLoaiHoSo"))) out.print("selected"); %>>Đạt</option>
										<option <% if ("Chưa đạt".equals(request.getParameter("selectedLoaiHoSo"))) out.print("selected"); %>>Chưa đạt</option>
									</select>
								</div>
							</div>
							<div class="container-combobox">
							<c:if test="${sessionScope.USER.level == '0'}">
								<div class="columnleft-2 p-l-30 p-t-35">
									<h4 class="fs-15 p-r-100">Chọn Khoa/Viện:</h4>
								</div>
								<div class="combobox2 m-t-30">
									<select id="selectKhoa" name="selectedKhoa">
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
								</c:if>
								<div class="columnleft-2 p-l-30 p-t-35">
									<h4 class="fs-15 p-r-100">Chọn danh hiệu:</h4>
								</div>
								<div class="combobox2 m-t-30">
									<select id="selectDanhHieu" name="selectedDanhHieu">
										<option value="" disabled selected>Select an option</option>
										<option <% if ("Sinh viên 5 tốt".equals(request.getParameter("selectedDanhHieu"))) out.print("selected"); %>>Sinh viên 5 tốt</option>
									</select>
								</div>
							</div>
							
							<button class="buttonblue m-t-20 m-l-45">Xem</button>
							<div class="p-b-30">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</form>
		<div class="framewhite m-l-10">
			<div class="table-container p-t-20 p-b-20">
				<table class="data-table">
					<thead>
						<tr>
							<th>Mã hồ sơ</th>
							<th>Xếp loại HS</th>
							<th>Họ và tên</th>
							<th>MSSV</th>
							<th>SĐT</th>
							<th>Giới tính</th>
							<th>Khoa</th>
							<th>Đơn vị duyệt</th>
						</tr>
					</thead>
					<tbody id="table-body">
						<!-- Dữ liệu sẽ được thêm vào đây sau khi bấm nút "Xem" -->
						<c:forEach var="o" items="${listsignup}">
							<tr class="text-center">
								<td>${o.fileID}</td>
								<td>${o.profileType}</td>
								<td class="text-bold"><a href="HomeController?usernamesinhvien=${o.studentID}" class="dec text-silver">${o.userName}</a></td>
								<td>${o.studentID}</td>
								<td>${o.phoneNumber}</td>
								<td>${o.sex}</td>
								<td>${o.clss}</td>
								<td>
								    <c:choose>
								        <c:when test="${o.confirm eq '1'}">Đã duyệt</c:when>
								        <c:when test="${o.confirm eq '0'}">Chưa duyệt</c:when>
								    </c:choose>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>