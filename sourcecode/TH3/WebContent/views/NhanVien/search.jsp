
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.PhongBan"%>
<%@page import="model.bean.NhanVien"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XEM THONG TIN PHONG BAN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/templates/css/style.css">
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
	
	<div class="container text-center" style="margin-top: 6px;">
	<!-- Container -->
		<div class="container text-center">
		<h1 style="color: red">KẾT QỦA TÌM KIẾM</h1></br>
		
<% 
	if(request.getParameter("msg")!=null){
	int msg=Integer.parseInt(request.getParameter("msg"));
	switch(msg){
	case 0:out.print("<p style='color:red;background:yellow;line-height:50px;'>Có lỗi</p>");
	break;
	case 1:out.print("<p style='color:green;background:yellow;line-height:50px;'>Thêm thành công</p>");
	break;
	case 2:out.print("<p style='color:green;background:yellow;line-height:50px;'>Sửa thành công</p>");
	break;
	case 3:out.print("<p style='color:green;background:yellow;line-height:50px;'>Xóa thành công</p>");
	break;
	}
}%>
	
		<table class="tablenv">
		<tr>
			<th>Tên nhân viên</th>
			<th>Địa chỉ</th>
			<th>Mã phòng ban</th>
			
		</tr>
		
		<%
									NhanVien nv=(NhanVien)request.getAttribute("nv");
									if(nv!=null){
								
								%>
								<tr>
									<td ><%=nv.getHoten()%></td>
									<td ><%=nv.getDiachi()%></td>
									<td ><%=nv.getIdpb()%></td>
									
									
									
								</tr>
								<%
									
									}else{
								%>
								<p>Không tìm thấy nhân viên nào</p>
								<%} %>
		
		</table>
		
	</div>
	
	<style>
.tablenv 
{
	height:80%;
	width:70%;
	border:2px solid green;
	margin-left:15%;
	margin-top:5%
}
th 
{
	
	border:2px solid green;
	text-align:center;
	height: 60px;
	
}
td
{
	border:2px solid green;
	height: 40px;
}
tr
{
	border:2px solid green;
}
	</style>
	</body>
</html>