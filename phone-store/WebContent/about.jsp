<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <title>About Us</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/changes.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
    <jsp:include page="header.jsp" />
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="index.jsp">Trang chủ</a></span> / <span>về chúng tôi</span></p>
                </div>
            </div>
        </div>
    </div>
    <div class="colorlib-about">
        <div class="container">
            <div class="row row-pb-lg">
                <div class="col-sm-6 mb-3">
                    <div class="video colorlib-video" style="background-image: url('images/logo-1.png'); ">
                        <a href="video/video.mp4" class="popup-vimeo"><i class="fas fa-play"></i></a>
                        <div class="overlay"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="about-wrap">
                        <h2>PHONE SHOP - Cửa hàng điện thoại hàng đầu trên toàn cầu</h2>
                        <p>"Cửa hàng giày chuyên cung cấp các loại giày thời trang đa dạng và phong cách. Khách hàng có thể
                            tìm thấy một bộ sưu tập đa dạng của giày sneakers, giày cao gót, giày thể thao và nhiều loại
                            giày khác. Cửa hàng giày cam kết mang đến cho khách hàng những sản phẩm chất lượng, thời trang
                            và phù hợp với xu hướng mới nhất. Bên cạnh đó, đội ngũ nhân viên chuyên nghiệp và nhiệt tình sẵn
                            sàng tư vấn để giúp khách hàng lựa chọn những đôi giày phù hợp với phong cách và nhu cầu của
                            họ."</p>
                        <p>"Nằm tại trung tâm thành phố, cửa hàng giày là địa điểm mua sắm lý tưởng cho những người yêu
                            thích giày dép. Với không gian rộng rãi và trưng bày cẩn thận, khách hàng có thể dễ dàng lựa
                            chọn và khám phá những mẫu giày mới nhất. Cửa hàng giày cung cấp các thương hiệu nổi tiếng và
                            sản phẩm chất lượng, mang đến cho khách hàng sự tin tưởng và sự hài lòng. Đội ngũ nhân viên thân
                            thiện và am hiểu về giày dép sẵn sàng đáp ứng mọi yêu cầu và mang đến trải nghiệm mua sắm thú vị
                            và thoải mái."</p>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </div>
</body>

</html>
