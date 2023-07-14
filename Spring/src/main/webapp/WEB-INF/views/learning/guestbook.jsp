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
	function add() {
		var addFrm = document.addFrm;
		if (addFrm.name.value == '' || addFrm.message.value == '') {
			alert('모든 항목을 입력하세요.');
			return;
		}
		addFrm.submit();
	}

	function modify(id) {
		if (confirm("정말 수정하시겠습니까?")){
			location.href = '<c:url value="/guestbook/modify.do" />?id=' + id;
		}
	}
	
	function del(id) {
		if (confirm("정말 삭제하시겠습니까?")){
			location.href = '<c:url value="/guestbook/delete.do" />?id=' + id;
		}
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
					<h2 class="bold">JPA</h2>
				</div>
				<div class="row cst_pd_top100">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">ADD</h2>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-12">
						<div class="article">
							<form name="addFrm" method="post" action="<c:url value="/guestbook/add.do" />">
								<a class="text_deco_none" href="javascript: add();">
									<i class="icon-bubble4"></i>
								</a>
								<div class="desc">
									<input type="text" class="cst_width_100per" name="name" placeholder="작성자">
								</div>
								<div class="desc">
									<input type="text" class="cst_width_100per" name="message" placeholder="내용">
								</div>								
							</form>
						</div>
					</div>						
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">LIST</h2>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-12">
						<div class="article">
							<c:forEach items="${list}" var="list">
								<div>
									<c:out value="${list.name}" /> : <c:out value="${list.message}" />
									<a href="javascript: modify('<c:out value="${list.id}" />');"><i class="icon-pencil"></i></a>
									<a href="javascript: del('<c:out value="${list.id}" />');"><i class="icon-delete2"></i></a>
								</div>
							</c:forEach>
						</div>
					</div>						
				</div>
			</div>
		</div>
		
		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

