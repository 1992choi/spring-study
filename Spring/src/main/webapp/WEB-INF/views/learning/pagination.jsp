<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet"
	href="<c:url value="/css/owl.carousel.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/css/owl.theme.default.min.css" />">
<link rel="stylesheet" href="<c:url value="/css/magnific-popup.css" />">
<link rel="stylesheet" href="<c:url value="/css/style.css" />">
<link rel="stylesheet" href="<c:url value="/css/style_custom.css" />">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- JS -->
<script type="text/javascript"
	src="<c:url value="/js/modernizr-2.6.2.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery.easing.1.3.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery.waypoints.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/owl.carousel.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery.magnific-popup.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/magnific-popup-options.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/main.js" />"></script>
<script type="text/javascript">
	function pagination(page) {
		location.href = '<c:url value="/learning/pagination.do" />?title=&cp=' + page + '&pageUnit=' + $('#pageUnit').val();
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
							<a class="colorlib-logo cst_align_left"
								href="<c:url value="/main.do" />"><span>CH</span><span>OI</span></a>
						</div>
						<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
					</div>
				</div>
			</div>
		</header>

		<div id="colorlib-blog">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Pagination</h2>
				</div>
				<div class="row cst_pd_top100">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">LIST</h2>
						</div>
					</div>
				</div>
				<div class="item">
					<br> <br> <br>
					리스트 갯수 : 
					<select id="pageUnit" onchange="javascript: pagination('1');">
						<option value="10" <c:if test="${pageUnit eq '10'}">selected</c:if>>10</option>
						<option value="30" <c:if test="${pageUnit eq '30'}">selected</c:if>>30</option>
						<option value="50" <c:if test="${pageUnit eq '50'}">selected</c:if>>50</option>
						<option value="100" <c:if test="${pageUnit eq '100'}">selected</c:if>>100</option>
						<option value="200" <c:if test="${pageUnit eq '200'}">selected</c:if>>200</option>
						<option value="300" <c:if test="${pageUnit eq '300'}">selected</c:if>>300</option>
						<option value="500" <c:if test="${pageUnit eq '500'}">selected</c:if>>500</option>
					</select>
					<br> <br> <br>
					<c:forEach items="${boardList}" var="list">
						<div>
							<c:out value="${list.title}" />
						</div>
					</c:forEach>
					<br> <br> <br>
					<ul class="pagination">
						<c:if test="${startPage ne 1}">
							<li><a href="javascript: pagination('1');">&lt;&lt;</a></li>
							<li><a href="javascript: pagination('${startPage - 1}');">&lt;</a></li>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
							<c:choose>
								<c:when test="${i eq cp}">
									<li class="active"><a href="javascript: pagination('${i}');">${i}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="javascript: pagination('${i}');">${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${cp ne finalPage && finalPage > 10}">
							<li><a href="javascript: pagination('${endPage + 1}');">&gt;</a></li>
							<li><a href="javascript: pagination('${finalPage}');">&gt;&gt;</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

