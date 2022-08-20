<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>About US</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${contextPath}/resources/img/favicon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${contextPath}/resources/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${contextPath}/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/custom.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Moderna - v4.7.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-center ">
  <div class="container d-flex justify-content-between align-items-center">

    <div class="logo">
      <a href="/home"><img src="${contextPath}/resources/img/logo.png" alt="" class="img-fluid"></a>
      <!-- Uncomment below if you prefer to use an image logo -->
    </div>

    <nav id="navbar" class="navbar">
      <ul>
        <li><a class="active " href="/home">Trang chủ</a></li>
        <li><a href="/about">Giới thiệu</a></li>
        <li class="dropdown"><a href="#"><span>Lĩnh vực</span></a>
          <ul>
            <li class="dropdown"><a href="/project"><span>Dự án</span><i class="bi bi-chevron-down"></i></a>
            <li class="dropdown"><a href="#"><span>Kinh doanh, thương mại</span><i class="bi bi-chevron-down"></i></a>
              <ul>
                <li><a href="/building-materials">Vật liệu xây dựng</a></li>
                <li><a href="#">Hoàn thiện nội thất</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li><a href="/news">Tin tức</a></li>
        <li><a href="/#">Tuyển dụng</a></li>
        <li><a href="/contact">Liên hệ</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->

  </div>
</header><!-- End Header -->

<main id="main">
  <section class="tongquan">
    <div class="container">
      <h3 style="text-align:center">Mua vật liệu xây dựng online chất lượng</h3>
      <p>Công ty chúng tôi sở hữu hơn 10 năm kinh nghiệm hoạt động trong ngành, cam kết không làm khách hàng phải thất vọng khi lựa chọn sử dụng dịch vụ của chúng tôi.</p>
      <p>Thành Đạt TK hiện đang cung cấp các sản phẩm vật liệu xây dựng như cát, đá, xi măng, thép, gạch… đảm bảo chất lượng với giá thành cạnh tranh trên thị trường hiện nay.</p>
      <p>Mọi sản phẩm do chúng tôi cung cấp đều có nguồn gốc xuất xứ rõ ràng. Chính vì vậy, bạn hoàn toàn có thể yên tâm khi mua hàng online tại đơn vị.</p>
      <p>Quý khách hoàn toàn có thể kiểm tra sản phẩm đã đầy đủ số lượng hay chưa trước khi thanh toán đơn hàng.</p>
      <p>Nếu có bất kỳ lỗi nào được phát hiện liên quan đến phía nhà sản xuất, Thành Đạt TK cam kết đền bù 100% giá trị hợp đồng như thỏa thuận ban đầu.</p>

      <div style="max-width:75%" class="flex justify-content-center"><img
              src="${contextPath}/resources/img/building-materials/vat-lieu-xay-dung-tai-kho.png"
              alt="Nên mua vật liệu xây dựng ở đâu" class="img-fluid img-border-circle"></div>
      </div>
    </div>
  </section>
  <section class="about" data-aos="fade-up">
    <div class="container">
      <div class="row">
        <h3 style="text-align:center">Cam kết dành cho những khách hàng mua vật liệu xây dựng online</h3>
        <p>Với mong muốn xây dựng niềm tin và thể hiện được mức độ uy tín của mình trên phương diện kinh doanh online,
          cửa hàng vật liệu xây dựng Thành Đạt TK chúng tôi xin cam kết:</p>
        <p>Công ty chúng tôi sở hữu hơn 10 năm kinh nghiệm hoạt động trong ngành, cam kết không làm khách hàng phải thất
          vọng khi lựa chọn sử dụng dịch vụ của chúng tôi.</p>
        <div class="col-lg-6">
          <img src="${contextPath}/resources/img/building-materials/vlxd.jpg" class="img-fluid img-border-circle" alt="">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0">
          <ul>
            <li><i class="bi bi-check2-circle"></i> Xây dựng công trình, phá dỡ chuẩn bị mặt bằng.</li>
            <li><i class="bi bi-check2-circle"></i> Lắp đặt hệ thống cấp, thoát nước, điện, lò sưởi, điều hòa.</li>
            <li><i class="bi bi-check2-circle"></i> Hoàn thiện nội thất.</li>
            <li><i class="bi bi-check2-circle"></i> Kinh doanh vật liệu, thiết bị lắp đặt trong xây dựng.</li>
            <li><i class="bi bi-check2-circle"></i> Vận tải hàng hóa bằng đường bộ.</li>
          </ul>
        </div>
      </div>

    </div>
  </section><!-- End About Section -->
</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6 footer-contact">
          <h4>Contact Us</h4>
          <p>
            Số 66 Trần Liễu <br>
            Phường Thanh Bình<br>
            TP. Hải Dương<br><br>
            <strong>Phone:</strong> 02203.831.216<br>
            <strong>Email:</strong> khanhtuky6886@gmail.com<br>
          </p>

        </div>

        <div class="col-lg-3 col-md-6 footer-info">
          <h3>THÀNH ĐẠT.TK</h3>
          <p>Cung cấp ra những dịch vụ, giá trị mang tính cốt lõi hướng tói lợi ích tốt nhất cho khách hàng là định hướng phát triển của Công ty.</p>
          <div class="social-links mt-3">
            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>
  </div>

  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong><span>CO</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/ -->
      Designed by <a href="#">CO</a>
    </div>
  </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="${contextPath}/resources/vendor/aos/aos.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${contextPath}/resources/vendor/glightbox/js/glightbox.min.js"></script>
<script src="${contextPath}/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="${contextPath}/resources/vendor/php-email-form/validate.js"></script>
<script src="${contextPath}/resources/vendor/purecounter/purecounter.js"></script>
<script src="${contextPath}/resources/vendor/swiper/swiper-bundle.min.js"></script>
<script src="${contextPath}/resources/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="${contextPath}/resources/js/main.js"></script>

</body>

</html>