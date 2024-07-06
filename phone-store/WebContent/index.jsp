<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Nam Truong Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
/* Đặt chiều cao và chiều rộng cho phần tử slider */
#colorlib-hero {
    position: relative;
    width: 100%;
    height: 100vh;
    overflow: hidden;
}

.flexslider {
    width: 100%;
    height: 100%;
    position: relative;
}

.slides {
    display: flex;
    padding: 0;
    margin: 0;
    list-style: none;
    width: 100%;
    animation: slide-animation 30s infinite;
}

.slides li {
    width: 100%;
    height: 100vh;
    flex-shrink: 0;
    background-size: cover;
    background-position: center;
    position: relative;
}

.overlay {
    position: absolute;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.3);
}

/* Keyframes cho hiệu ứng slide */
@keyframes slide-animation {
    0% { transform: translateX(0%); }
    20% { transform: translateX(0%); }
    25% { transform: translateX(-100%); }
    45% { transform: translateX(-100%); }
    50% { transform: translateX(-200%); }
    70% { transform: translateX(-200%); }
    75% { transform: translateX(-300%); }
    95% { transform: translateX(-300%); }
    100% { transform: translateX(-400%); }
}

</style>
<body style="background-color: #E6F9E6;">

	<%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");
	String userType = (String) session.getAttribute("usertype");

	boolean isValidUser = true;

	if (userType == null || userName == null || password == null || !userType.equals("customer")) {

		isValidUser = false;
	}

	ProductServiceImpl prodDao = new ProductServiceImpl();
	List<ProductBean> products = new ArrayList<ProductBean>();

	String search = request.getParameter("search");
	String type = request.getParameter("type");
	String message = "Tất cả sản phẩm";
	if (search != null) {
		products = prodDao.searchAllProducts(search);
		message = "Kết quả tìm kiếm cho '" + search + "'";
	} else if (type != null) {
		products = prodDao.getAllProductsByType(type);
		message = "Kết quả tìm kiếm cho '" + type + "'";
	} else {
		products = prodDao.getAllProducts();
	}
	if (products.isEmpty()) {
		message = "Không tìm thấy sản phẩm theo yêu cầu '" + (search != null ? search : type) + "'";
		products = prodDao.getAllProducts();
	}
	%>

	<jsp:include page="header.jsp" />
	<aside id="colorlib-hero">
	    <div class="flexslider">
	        <ul class="slides">
	            <li style="background-image: url('webroot/image/slider/cover-img-1.jpg');">
	                <div class="overlay"></div>
	            </li>
	            <li style="background-image: url('webroot/image/slider/cover-img-2.jpg');">
	                <div class="overlay"></div>
	            </li>
	            <li style="background-image: url('webroot/image/slider/cover-img-3.jpg');">
	                <div class="overlay"></div>
	            </li>
	             <li style="background-image: url('webroot/image/slider/cover-img-1.jpg');">
	                <div class="overlay"></div>
	            </li>
	        </ul>
	    </div>
	</aside>
	<div class="text-center"
		style="color: black; font-size: 40px; font-weight: bold;"><%=message%></div>
	<div class="text-center" id="message"
		style="color: black; font-size: 14px; font-weight: bold;"></div>
	<!-- Start of Product Items List -->
	<div class="container">
		<div class="row text-center">

			<%
			for (ProductBean product : products) {
				int cartQty = new CartServiceImpl().getCartItemCount(userName, product.getProdId());
			%>
			<div class="col-sm-4" style="height: 350px;">
				<div class="thumbnail">
					<img src="./ShowImage?pid=<%=product.getProdId()%>" alt="Product"
						style="height: 150px; max-width: 180px; padding: 15px;">
					<p class="productname" style="font-size: 25px; color: grey;"><%=product.getProdName()%>
					</p>
					<%
					String description = product.getProdInfo();
					description = description.substring(0, Math.min(description.length(), 100));
					%>
					<p class="productinfo" style="font-size: 13px;"><%=description%>...
					</p>
					<p class="price" style="color: green;">

					    <fmt:formatNumber type="number" value="<%=product.getProdPrice()%>"></fmt:formatNumber>đ
					</p>
					<form method="post">
						<%
						if (cartQty == 0) {
						%>
						<button type="submit"
							formaction="./AddtoCart?uid=<%=userName%>&pid=<%=product.getProdId()%>&pqty=1"
							class="btn btn-success">Giỏ hàng</button>
						&nbsp;&nbsp;&nbsp;
						<button type="submit"
							formaction="./AddtoCart?uid=<%=userName%>&pid=<%=product.getProdId()%>&pqty=1"
							class="btn btn-primary">Mua Ngay</button>
						<%
						} else {
						%>
						<button type="submit"
							formaction="./AddtoCart?uid=<%=userName%>&pid=<%=product.getProdId()%>&pqty=0"
							class="btn btn-danger">Xóa khỏi giỏ</button>
						&nbsp;&nbsp;&nbsp;
						<button type="submit" formaction="cartDetails.jsp"
							class="btn btn-success">Thanh toán</button>
						<%
						}
						%>
					</form>
					<br />
				</div>
			</div>

			<%
			}
			%>

		</div>
	</div>
	<!-- ENd of Product Items List -->


	<%@ include file="footer.jsp"%>

</body>
</html>