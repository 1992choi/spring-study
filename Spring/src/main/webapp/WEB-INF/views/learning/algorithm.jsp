<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Choi's WEB</title>
<!-- CSS -->
<link rel="stylesheet" href="<c:url value="/css/animate.css" />">
<link rel="stylesheet" href="<c:url value="/css/icomoon.css" />">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.css" />">
<link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css" />">
<link rel="stylesheet" href="<c:url value="/css/owl.theme.default.min.css" />">
<link rel="stylesheet" href="<c:url value="/css/magnific-popup.css" />">
<link rel="stylesheet" href="<c:url value="/css/style.css" />">
<link rel="stylesheet" href="<c:url value="/css/style_custom.css" />">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- JS -->
<script type="text/javascript" src="<c:url value="/js/modernizr-2.6.2.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.easing.1.3.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.waypoints.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/owl.carousel.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.magnific-popup.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/magnific-popup-options.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/main.js" />"></script>
<script type="text/javascript">
	function showCode(page) {
		var gitUrl = 'https://github.com/Young-Geun/Java/tree/master/src/algorithm/';
		window.open(gitUrl + page, 'algorithm');
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
							<a class="colorlib-logo cst_align_left" href="<c:url value="/main.do" />"><span>CH</span><span>OI</span></a>
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
									</a>
									<div class="desc">
										<h2>
											<a href="javascript: showCode('stackAndQueue');">스택&큐</a>
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
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
										<img class="img-responsive" src="<c:url value="/images/algorithm.png" />">
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

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

