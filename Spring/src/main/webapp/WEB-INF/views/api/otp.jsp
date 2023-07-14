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
	function keyCheck() {
		var otpKey = $('#otpKey').val();
		var encodedKey = $('#encodedKey').val();
		
		$.ajax({
		    url: '<c:url value="/api/otpCheck.do" />',
		    type: 'GET',
		    cache: false,
		    dataType: 'json',
		    data: {
		    	otpKey: otpKey,
		    	encodedKey: encodedKey
		    },
		    success: function(data){
		    	if (data.isValid) {
		    		alert('인증성공');
		    	} else {
		    		alert('인증실패');
		    	}
		    },		    
		    error: function (request, status, error){       
		    	console.log('keyCheck() Err');
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
							<a class="colorlib-logo cst_align_left" href="<c:url value="/main.do" />"><span>CH</span><span>OI</span></a>
						</div>
						<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
					</div>
				</div>
			</div>
		</header>
		
		<div id="colorlib-about">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">OTP</h2>
				</div>
				<div class="row cst_align_center cst_pd_top100 cst_pd_bottom400">
					<img class="db cst_center" src="<c:out value="${url}"/>">
					QR코드 혹은 아래 코드를 입력하세요.
					<input class="db cst_center cst_mg_top30 cst_width_200" type="text" id="encodedKey" value="<c:out value="${encodedKey}"/>" readonly="readonly">
					<hr> 
					<input class="db cst_center cst_mg_top30 cst_width_200" type="text" id="otpKey" placeholder="OTP CODE">
					<a class="db cst_pd_top30" href="javascript: keyCheck();">인증하기</a>
				</div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

