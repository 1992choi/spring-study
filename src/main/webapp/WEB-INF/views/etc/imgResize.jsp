<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Choi's WEB</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<!-- Animate.css -->
<link rel="stylesheet" href="/choi/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/choi/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/choi/css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="/choi/css/owl.carousel.min.css">
<link rel="stylesheet" href="/choi/css/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/choi/css/magnific-popup.css">
<link rel="stylesheet" href="/choi/css/style.css">
<link rel="stylesheet" href="/choi/css/style_custom.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Modernizr JS -->
<script src="/choi/js/modernizr-2.6.2.min.js"></script>
<!-- jQuery -->
<script src="/choi/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/choi/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/choi/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/choi/js/jquery.waypoints.min.js"></script>
<!-- Owl Carousel -->
<script src="/choi/js/owl.carousel.min.js"></script>
<!-- Magnific Popup -->
<script src="/choi/js/jquery.magnific-popup.min.js"></script>
<script src="/choi/js/magnific-popup-options.js"></script>
<!-- Main JS (Do not remove) -->
<script src="/choi/js/main.js"></script>
</head>
<body>
	<jsp:include page="../menu.jsp" />

	<div id="colorlib-page">
		<header>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="colorlib-navbar-brand">
							<a class="colorlib-logo cst_align_left" href="/choi/main.do"><span>CH</span><span>OI</span></a>
						</div>
						<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
					</div>
				</div>
			</div>
		</header>
		<div id="colorlib-about">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Resize</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<h4>원본파일</h4>
						<div class="item">
							<img class="img-responsive about-img" src="/choi/images/about.jpg">
						</div>
					</div>
					<div class="col-md-6">
						<h4>변환파일</h4>
						<div class="item">
							<img class="img-responsive about-img" src="/choi/images/about_resize.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

