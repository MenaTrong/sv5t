<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách các tệp đã lưu</title>
</head>
<body>
    <h2>Danh sách các tệp đã lưu</h2>
    <ul>
        <% 
            String webAppPath = application.getRealPath("/");
            File folder = new File(webAppPath + "Image");
            File[] files = folder.listFiles();
            if (files != null) {
                for (File file : files) {
        %>
            <li><a href="<%= request.getContextPath() %>/Image/<%= file.getName() %>"><%= file.getName() %></a></li>
        <%
                }
            }
        %>
    </ul>
    <h2>Danh sách các tệp đã lưu</h2>
    <p>Đường dẫn gốc của ứng dụng: <%= webAppPath %></p>
</body>
</html>
