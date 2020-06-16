<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<!-- jquery -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="application/javascript">
	function sendMail() {
		$.ajax({
		    url: "/choi/contact/sendMail.json",
		    type: "POST",
		    cache: false,
		    dataType: "json",
		    data: {
		    	subject: $('#subject').val(),
		    	message: $('#message').val(),
		    	sender: $('#sender').val(),
		    	senderEmail: $('#senderEmail').val()		    	
		    },
		    success: function(data){
		    	if (data.result == 'success') {
		    		alert('발송을 성공했습니다.');
		    	} else {
		    		alert('발송을 실패했습니다.');
		    	}
		    },		    
		    error: function (request, status, error){        
		    	alert("오류가 발생하였습니다.");
		    }
		});		
	}
</script>
</head>
<body>
	<nav id="colorlib-main-nav" role="navigation">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
		<div class="js-fullheight colorlib-table">
			<div class="colorlib-table-cell js-fullheight">
				<div class="row">
					<div class="col-md-12">
						<ul>
							<li class="active"><a href="/choi/main.do">Home</a></li>
							<li><a href="#">Menu #1</a></li>
							<li><a href="#">Menu #2</a></li>
							<li><a href="#">Menu #3</a></li>
							<li><a href="#">Menu #4</a></li>
							<li><a href="/choi/contact.do">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<a href="./images/menu_img1.jpg" class="gallery image-popup-link text-center" style="background-image: url(./images/menu_img1.jpg);"> 
							<span><i class="icon-search3"></i></span>
						</a> 
						<a href="./images/menu_img2.jpg" class="gallery image-popup-link text-center" style="background-image: url(./images/menu_img2.jpg);">
							<span><i class="icon-search3"></i></span>
						</a> 
						<a href="./images/menu_img3.jpg" class="gallery image-popup-link text-center" style="background-image: url(./images/menu_img3.jpg);">
							<span><i class="icon-search3"></i></span>
						</a>
						<a href="./images/menu_img4.jpg" class="gallery image-popup-link text-center" style="background-image: url(./images/menu_img4.jpg);">
							<span><i class="icon-search3"></i></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	
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
		
		<div id="colorlib-contact">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Contact</h2>
				</div>
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-center animate-box intro-heading">
						<span>Contact</span>
						<h2>Contact Me</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">Contact</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-md-offset-0">
						<div class="row">
							<div class="col-md-4 animate-box">
								<h3>My Address</h3>
								<ul class="contact-info">
									<li><span><i class="icon-phone4"></i></span>+82 10-4884-8084</li>
									<li><span><i class="icon-envelope2"></i></span>younggeunn@naver.com</li>
									<li><span><i class="icon-globe3"></i></span><a href="http://27.96.134.221:8080/choi">http://27.96.134.221:8080/choi</a></li>
								</ul>
							</div>
							<div class="col-md-7 col-md-push-1 animate-box">								
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" id="subject" class="form-control" placeholder="Subject">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea id="message" class="form-control" id="" cols="30" rows="7" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input type="text" id="sender" class="form-control" placeholder="Your Name">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input type="text" id="senderEmail" class="form-control" placeholder="Your Email">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="button" class="btn btn-primary" value="Send Message" onclick="javascript: sendMail();">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<p>Copyright &copy; CHOI</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	
	</div>

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
