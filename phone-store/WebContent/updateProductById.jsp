<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Cập nhật sản phẩm</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #E6F9E6;">
	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userType == null || !userType.equals("admin")) {
		response.sendRedirect("login.jsp?message=Access Denied, Login As Admin!!");
		return;

	} else if (userName == null || password == null) {
		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
		return;
	}
	%>

	<jsp:include page="header.jsp" />

	<%
	String message = request.getParameter("message");
	%>
	<div class="container">
		<div class="row"
			style="margin-top: 60px; margin-left: 2px; margin-right: 2px;">
			<form action="updateProduct.jsp" method="post"
				class="col-md-4 col-md-offset-4"
				style="border: 2px solid black; border-radius: 10px; background-color: #abaed4; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h3 style="color: yellow;">Mẫu cập nhập sản phẩm</h3>
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name" style="font-size: 20px;">ID sản phẩm</label> <input type="text"
							placeholder="Enter Product Id" name="prodid" class="form-control"
							id="last_name" style="height: 50px;" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 text-center" style="margin-bottom: 2px;">
						<a href="adminViewProduct.jsp" class="btn btn-danger">Hủy</a>
					</div>
					<div class="col-md-6 text-center">
						<button type="submit" class="btn btn-success">Cập nhật sản phẩm</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>