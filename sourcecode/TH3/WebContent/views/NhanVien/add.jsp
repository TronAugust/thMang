
<%@page import="model.bean.PhongBan"%>
<%@page import="model.bean.NhanVien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Quản Lý Phòng Ban</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="/templates/inc/header.jsp"></jsp:include>
	<jsp:include page="/templates/inc/left-bar.jsp"></jsp:include>
	<jsp:include page="/templates/inc/right-bar.jsp"></jsp:include>
	<!-- end header -->
	<!-- Container -->
	<%
	String msg=request.getParameter("msg");
	if("1".equals(msg)){
		out.print("loi");
	}
	%>
	<div class="container text-left " style='margin-left:30%'>
		<h1 style="color: red">Thêm Nhân Viên Phòng Ban</h1>

		<form action="<%=request.getContextPath()%>/ThemnhanvienController" method="post">
		<label>Mã nhân viên:</label>
		<input type="text" name="ma" value=""> <br> <br>
		<label>Họ tên:</label>
		<input type="text" name="ten" value=""> <br> <br>
		<label>Địa chỉ:</label>
		<input type="text" name="diachi" value=""> <br> <br>
		<label>IDPB:</label>
		<input type="text" name="idpb" value=""> 
		<br>
		<input type="submit" value="Thêm">
	</form>
	
	</div>
	
</body>
</html>