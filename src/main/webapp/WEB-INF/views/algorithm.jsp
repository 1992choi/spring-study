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
<link rel="stylesheet" href="./css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="./css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="./css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="./css/magnific-popup.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/style_custom.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Modernizr JS -->
<script src="./js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript">
	function showCode(page) {
		var gitUrl = 'https://github.com/19920731/algorithm/tree/master/src/';
		window.open(gitUrl + page, 'algorithm');
	}
</script>
</head>
<body>
	<jsp:include page="./menu.jsp" />

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
	
		<div id="colorlib-blog">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Algorithm</h2>
				</div>
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-center animate-box intro-heading">
						<h2>&nbsp;</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">Algorithm</h2>
						</div>
					</div>
				</div>
				<div class="row animate-box">
					<div class="owl-carousel1">
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('array');">배열</a>
										</h2>
										<ul>
											<li>
												<a href="javascript: showCode('array/MaxOfArray.java');">
													최댓값 구하기
												</a>
											</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('search');">검색</a>
										</h2>
										<ul>
											<li>목록 1</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('stackAndQueue)');">스택&큐</a>
										</h2>
										<ul>
											<li>목록 1</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('recursion');">재귀</a>
										</h2>
										<ul>
											<li>목록 1</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('sort');">정렬</a>
										</h2>
										<ul>
											<li>목록 1</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('tree');">트리</a>
										</h2>
										<ul>
											<li>목록 1</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a class="blog-img"> 
										<img class="img-responsive" src="./images/algorithm.png">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('graph');">그래프</a>
										</h2>
										<ul>
											<li>목록 1</li>
											<li>목록 2</li>
											<li>목록 3</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="codeDiv">					
				</div>				
			</div>
		</div>

		<jsp:include page="./footer.jsp" />

	</div>

	<!-- jQuery -->
	<script src="./js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="./js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="./js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="./js/jquery.waypoints.min.js"></script>
	<!-- Owl Carousel -->
	<script src="./js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="./js/jquery.magnific-popup.min.js"></script>
	<script src="./js/magnific-popup-options.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="./js/main.js"></script>

</body>
</html>

