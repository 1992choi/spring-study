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
	$(document).ready(function() {
	    $("#keyword").keydown(function(key) {
	        if (key.keyCode == 13) {
	        	searching();
	        }
	    });
	});

	function searching() {
		$.ajax({
		    url: '<c:url value="/etc/searchJson.do" />',
		    type: 'GET',
		    cache: false,
		    dataType: 'json',
		    data: {
		    	keyword: $('#keyword').val()
		    },
		    success: function(data){
		    	$('#fileList').html('');
		    	if (data.hits == '0') {
		    		$('#msg').html('검색된 파일이 없습니다.');
		    	} else {
		    		var fileName = data.filename.split(';');
		    		$('#msg').html('총 ' + data.hits + '건이 검색되었습니다<br>');
		    		$('#fileList').append('<ul>');
			    	for (var i = 0; i < fileName.length - 1; i++) {
			    		$('#fileList').append('<li><a class="text_deco_none" href="javascript: download(\'' + fileName[i] +'\')">' + fileName[i] + '</a></li>');
			    	}
			    	$('#fileList').append('</ul>');
		    	}
		    },		    
		    error: function (request, status, error){       
		    	console.log('searching() Err');
		    }
		});
	}
	
	function download(fileName) {
        location.href = '<c:url value="/etc/fileDownload.do" />?fileName=' + fileName;
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
					<h2 class="bold">검색엔진</h2>
				</div>
				<div class="row cst_align_center cst_pd_top200">
					<input type="text" id="keyword" class="form-control" placeholder="검색할 단어를 입력하고 엔터키를 누르세요.">
					<div id="msg" class="cst_pd_top60"></div>
				</div>
				<div id="fileList"></div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

