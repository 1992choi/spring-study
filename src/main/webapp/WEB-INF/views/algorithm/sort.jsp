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
	function showCode(sort) {
		$.ajax({
		    url: '/choi/json/algorithm/sort/' + sort + 'Sort.jsp',
		    type: 'POST',
		    cache: false,
		    dataType: 'html',
		    success: function(data){
		    	$('#codeDiv').html(data);
		    },		    
		    error: function (request, status, error){        
		    	alert('구현 중입니다.');
		    }
		});		
	}
</script>
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
							<h2 class="heading">Sort</h2>
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
											<a href="javascript: showCode('bubble');">Bubble Sort</a>
										</h2>
										<p>
											인접한 두 개의 원소를 비교하여 자리를 교환하는 방법
										</p>
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
											<a href="javascript: showCode('selection');">Selection Sort</a>
										</h2>
										<p>
											전체 원소들 중에서 기준 위치에 맞는 원소를 선택하여 자리를 교환하는 방법
										</p>
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
											<a href="javascript: showCode('insertion');">Insertion Sort</a>
										</h2>
										<p>
											정렬되어 있는 부분집합에 정렬할 새로운 원소의 위치를 삽입하는 방법
										</p>
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
											<a href="javascript: showCode('merge');">Merge Sort</a>
										</h2>
										<p>
											2개 이상의 자료를 오름차순이나 내림차순으로 재배열하고 정렬된 자료의 집합을 병합하여 정렬하는 방법
										</p>
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
											<a href="javascript: showCode('quick');">Quick Sort</a>
										</h2>
										<p>
											정렬할 전체 원소에 대해서 정렬을 수행하지 않고, 기준 값을 중심으로 왼쪽 부분 집합과 오른쪽 부분 집합으로 분할하여 정렬하는 방법
										</p>
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
											<a href="javascript: showCode('heap');">Heap Sort</a>
										</h2>
										<p>
											최대 힙 트리나 최소 힙 트리를 구성해 정렬을 하는 방법
										</p>
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
											<a href="javascript: showCode('shell');">Shell  Sort</a>
										</h2>
										<p>
											일정한 간격(interval)으로 떨어져 있는 자료들끼리 부분집합을 구성하고 각 부분집합에 있는 원소들에 대해서 삽입 정렬을 수행하는 작업을 반복하면서 전체 원소들을 정렬하는 방법
										</p>
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

		<jsp:include page="../footer.jsp" />

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

