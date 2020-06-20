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
</head>
<body>
	<jsp:include page="./nav.jsp" />

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
					<h2 class="bold">Profile</h2>
				</div>
				<div class="row">
					<div class="col-md-5 animate-box">
						<div class="owl-carousel3">
							<div class="item">
								<img class="img-responsive about-img" src="./images/about.jpg">
							</div>
							<div class="item">
								<img class="img-responsive about-img" src="./images/about2.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-6 col-md-push-1 animate-box">
						<div class="about-desc">
							<div class="owl-carousel3">
								<div class="item">
									<h2>
										<span>CHOI</span><span>YOUNGGEUN</span>
									</h2>
								</div>
								<div class="item">
									<h2>
										<span>Web</span><span>Developer</span>
									</h2>
								</div>
							</div>
							<div class="desc">
								<div class="rotate">
									<h2 class="heading">Profile</h2>
								</div>
								<p>
									<h3>최영근 (1992.07.31)</h3>
								</p>
								<p class="colorlib-social-icons cst_pd_top30">
									<a class="cst_va_sub"><i class="icon-smartphone"></i></a>
									+82 10-4884-8084
									<br>
									<a class="cst_va_sub" href="javascript: window.open('https://github.com/19920731', '_target');"><i class="icon-github2"></i></a>
									https://github.com/19920731
									<br>
									<a class="cst_va_sub" href="/choi/contact.do"><i class="icon-mail5"></i></a>
									younggeunn@naver.com
									<br>
									<a class="cst_va_sub" href="javascript: shareKako();"><i class="icon-share-2"></i></a>
									Share with KakaoTalk
									<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
									<script type="text/javascript">
										// input your appkey
										Kakao.init('<c:out value="${kakaoJsKey}"/>');
									
										function shareKako() {
											Kakao.Link.sendDefault({
												objectType: 'feed',
												content: {
													title: "Choi's WEB",
												    description: '',
												    imageUrl: 'http://27.96.134.221:8080/choi/images/about.jpg',
												    link: {
												      mobileWebUrl: 'http://27.96.134.221:8080/choi',
												    },
												},
												success: function(response) {
													console.log(response);
												},
												fail: function(error) {
													console.log(error);
												}
											});
										}
									</script>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="colorlib-services">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Skill</h2>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="services-flex">
							<div class="one-third">
								<div class="row">
									<div class="col-md-12">
										<div class="rotate">
											<h2 class="heading">SKILL</h2>
										</div>
									</div>
									<div class="col-md-6">
										<div class="services animate-box">
											<h3>경력사항</h3>
											<ul>
												<li>HSForce(핸디 자회사)<br>(2019.06 ~ )</li>
												<li>핸디소프트<br>(2017.07 ~ 2019.05)</li>
											</ul>
										</div>
										<div class="services animate-box">
											<h3>교육</h3>
											<ul>
												<li>자바 프로그램 개발자 양성 과정<br>(KH 정보교육원)</li>
												<li>스프링 프레임워크<br>(SK T아카데미)</li>
												<li>데이터베이스<br>(SK T아카데미)</li>
											</ul>
										</div>																			
									</div>
									<div class="col-md-6">
										<div class="services animate-box">
											<h3>보유기술</h3>
											<ul>
												<li>JAVA</li>
												<li>JSP</li>
												<li>Spring framework</li>
												<li>Javascript</li>
												<li>jQuery</li>
												<li>MyBatis</li>
											</ul>
										</div>
										<div class="services animate-box">
											<h3>자격증</h3>
											<ul>
												<li>정보처리기사</li>
											</ul>
										</div>										
									</div>
								</div>
							</div>
							<div class="one-forth services-img" style="background-image: url(./images/skill.jpg);"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-blog">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Project</h2>
				</div>
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-center animate-box intro-heading">
						<h2>&nbsp;</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">Project</h2>
						</div>
					</div>
				</div>
				<div class="row animate-box">
					<div class="owl-carousel1">
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a href="#" class="blog-img"> 
										<img class="img-responsive" src="./images/pjt_hf.png">
										<div class="overlay"></div>
										<div class="link">
											<span class="read">Read more</span>
										</div>
									</a>
									<div class="desc">
										<span class="meta"><i class="fa fa-calendar"></i> 2020.07 ~ 2021.05</span>
										<h2>
											<a href="#">한국주택금융공사</a>
										</h2>
										<p>
											Web Server : WebtoB<br>
											WAS : JEUS<br>
											USER : 1,500
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a href="#" class="blog-img"> 
										<img class="img-responsive" src="./images/pjt_korail.png">
										<div class="overlay"></div>
										<div class="link">
											<span class="read">Read more</span>
										</div>
									</a>
									<div class="desc">
										<span class="meta"><i class="fa fa-calendar"></i> 2019.08 ~ 2020.07</span>
										<h2>
											<a href="#">철도공사</a>
										</h2>
										<p>
											Web Server : iPLANET / Apache<br>
											WAS : WebLogic / Tomcat<br>
											USER : 30,000
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a href="#" class="blog-img"> 
										<img class="img-responsive" src="./images/pjt_nps.png">
										<div class="overlay"></div>
										<div class="link">
											<span class="read">Read more</span>
										</div>
									</a>
									<div class="desc">
										<span class="meta"><i class="fa fa-calendar"></i> 2019.02 ~ 2019.07</span>
										<h2>
											<a href="#">국민연금공단</a>
										</h2>
										<p>
											Web Server : WebtoB<br>
											WAS : JEUS<br>
											USER : 7,000
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a href="#" class="blog-img"> 
										<img class="img-responsive" src="./images/pjt_nec.png">
										<div class="overlay"></div>
										<div class="link">
											<span class="read">Read more</span>
										</div>
									</a>
									<div class="desc">
										<span class="meta"><i class="fa fa-calendar"></i> 2018.12 ~ 2019.01</span>
										<h2>
											<a href="#">중앙선거관리위원회</a>
										</h2>
										<p>
											Web Server : WebtoB<br>
											WAS : JEUS<br>
											USER : 5,000
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a href="#" class="blog-img"> 
										<img class="img-responsive" src="./images/pjt_ssis.png">
										<div class="overlay"></div>
										<div class="link">
											<span class="read">Read more</span>
										</div>
									</a>
									<div class="desc">
										<span class="meta"><i class="fa fa-calendar"></i> 2018.07 ~ 2018.12</span>
										<h2>
											<a href="#">사회보장정보원</a>
										</h2>
										<p>
											Web Server : WebtoB<br>
											WAS : JEUS<br>
											USER : 1,000
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="col-md-12">
								<div class="article">
									<a href="#" class="blog-img"> 
										<img class="img-responsive" src="./images/pjt_handy.png">
										<div class="overlay"></div>
										<div class="link">
											<span class="read">Read more</span>
										</div>
									</a>
									<div class="desc">
										<span class="meta"><i class="fa fa-calendar"></i> 2017.07 ~ 2019.01</span>
										<h2>
											<a href="#">핸디소프트</a>
										</h2>
										<p>
											Groupware maintenance
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
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

