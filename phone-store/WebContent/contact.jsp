<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chính Sách Bảo Mật</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/changes.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
.contact-info-wrap p {
    display: flex;
    align-items: center;
    margin: 10px 0;
}

.contact-info-wrap p span {
    display: flex;
    align-items: center;
    margin-right: 10px;
}

.contact-info-wrap p span i {
    font-size: 1.5em; /* Adjust the size of the icons if needed */
}
</style>
<body>
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="index.jsp">Trang Chủ</a></span> / <span>Chính Sách Bảo Mật</span></p>
                </div>
            </div>
        </div>
    </div>
    <div id="colorlib-contact">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h3>Chính Sách Bảo Mật</h3>
                    <h3><b>Chúng tôi là ai</b></h3><br>
                    <p><b>Văn bản gợi ý:</b> Địa chỉ trang web của chúng tôi là: http://CellPhoneS.vn/</p>
                    <h3><b>Nhận xét</b></h3><br>
                    <p><b>Văn bản đề xuất:</b> Khi khách truy cập để lại nhận xét trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu nhận xét,
                     cũng như địa chỉ IP của khách truy cập và chuỗi tác nhân người dùng trình duyệt để giúp phát hiện spam.</p><br>
                    <p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là mã băm) có thể được cung cấp cho dịch vụ
                    Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có sẵn tại đây:
                    https://automattic.com/privacy/. Sau khi phê duyệt bình luận của bạn, ảnh hồ sơ của bạn sẽ hiển thị công khai
                    trong bối cảnh bình luận của bạn.</p><br>
                    <h3><b>Nội phương tiện</b></h3><br>
                    <p><b>Văn bản đề xuất:</b> Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có bao gồm dữ liệu vị trí nhúng (EXIF GPS).
                     Khách truy cập trang web có thể tải xuống và trích xuất bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><br>
                     <h3><b>Bạn có quyền gì đối với dữ liệu của mình</b></h3><br>
                     <p><b>Văn bản đề xuất:</b>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét,
                      bạn có thể yêu cầu nhận tệp đã xuất của dữ liệu cá nhân mà chúng tôi giữ về bạn, bao gồm
                      bất kỳ dữ liệu nào bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa
                      mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu 
                      nào mà chúng tôi có nghĩa vụ lưu giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><br>
                      <h3><b>Nơi chúng tôi gửi dữ liệu của bạn</b></h3><br>
                      <p><b>Văn bản đề xuất:</b>Nhận xét của khách truy cập có thể được kiểm tra thông qua dịch vụ phát hiện spam tự động.</p><br><br>
                </div>
            </div>
        </div>
    </div>
    <h3 style="text-align: center;"><i>Thank you for reading the phone store privacy policy!!</i></h3>
    <jsp:include page="footer.jsp" />
</body>
</html>
