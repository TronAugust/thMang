
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
	
	
	<!-- end header -->
	<!-- Container -->
	<div class="container text-center">
		
		</br><h2>ĐĂNG NHẬP</h2>
		</br>
		<form action="CheckLoginServlet" method="post" >
	
		username:<input type="text" name="userName"/></br></br>
		password:<input type="text" name="password"/></br></br>
		<input type="submit" value="Login"/>
		
	</form>
	<%
	String msg=request.getParameter("msg");
	if("0".equals(msg)){
		out.print("<h2 style='color:red'>Đăng nhập thất bại! Hãy nhập lại mật khẩu và password</h2>");
	}
	%>
	</div>
	
</body>
</html>