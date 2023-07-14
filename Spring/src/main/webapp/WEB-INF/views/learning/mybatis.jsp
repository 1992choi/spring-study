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
	function addMember() {
		var addFrm = document.addFrm;
		if (addFrm.memberName.value == '' || addFrm.phoneNumber.value == '' || addFrm.email.value == '') {
			alert('모든 항목을 입력하세요.');
			return;
		}
		addFrm.submit();
	}
	
	function modMember() {
		var modFrm = document.modFrm;
		if (modFrm.memberName.value == '' || modFrm.phoneNumber.value == '' || modFrm.email.value == '') {
			alert('모든 항목을 입력하세요.');
			return;
		}
		modFrm.submit();
	}
	
	function deleteMember(memberId) {
		if (confirm("정말 삭제하시겠습니까?")){
			location.href = '<c:url value="/learning/deleteMember.do" />?memberId=' + memberId;
		}
	}
	
	function showModifyArea(memberId, memberName, phoneNumber, email) {
		$('#memberId').val(memberId);
		$('#memberName').val(memberName);
		$('#phoneNumber').val(phoneNumber);
		$('#email').val(email);
		$('.update').removeClass('dn');		
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
					<h2 class="bold">MyBatis</h2>
				</div>
				<div class="row">
					<div class="col-md-12 col-md-offset-0 text-center animate-box intro-heading">
						<h2>&nbsp;</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">USER</h2>
						</div>
					</div>
				</div>
				<div class="row animate-box">
					<div class="owl-carousel1">
						<c:forEach items="${memberList}" var="list">
							<div class="item">
								<div class="col-md-12">
									<div class="article">
										<a class="text_deco_none" href="javascript: showModifyArea('<c:out value="${list.memberId}" />', '<c:out value="${list.memberName}" />', '<c:out value="${list.phoneNumber}" />', '<c:out value="${list.email}" />');">
											<i class="icon-user-check"></i>
										</a>
										<a class="text_deco_none" href="javascript: deleteMember('<c:out value="${list.memberId}" />');">
											<i class="icon-user-minus"></i>
										</a>										
										<a class="blog-img"> 
											<img class="img-responsive" src="<c:url value="/images/user.jpg" />">
										</a>
										<div class="desc">
											<h2>
												<c:out value="${list.memberName}" />
											</h2>
											<ul>
												<li><c:out value="${list.phoneNumber}" /></li>
												<li><c:out value="${list.email}" /></li>
											</ul>
										</div>
									</div>
								</div>						
							</div>
						</c:forEach>						
					</div>
				</div>
				<div class="row update dn">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">UPDATE</h2>
						</div>
					</div>
				</div>
				<div class="item update dn">
					<div class="col-md-12">
						<div class="article">
							<form name="modFrm" method="post" action="<c:url value="/learning/modMember.do" />">
								<a class="text_deco_none" href="javascript: modMember();">
									<i class="icon-user-check"></i>
								</a>
								<a class="blog-img cst_width_100per"> 
									<img class="img-responsive" src="<c:url value="/images/user.jpg" />">
								</a>
								<div class="desc">
									<h2>
										<input type="hidden" id="memberId" name="memberId">
										<input type="text" class="cst_width_100per" id="memberName" name="memberName" placeholder="이름">
									</h2>
									<ul>
										<li><input type="text" class="cst_width_100per" id="phoneNumber" name="phoneNumber" placeholder="전화번호"></li>
										<li><input type="text" class="cst_width_100per" id="email" name="email" placeholder="이메일"></li>
									</ul>
								</div>
							</form>
						</div>
					</div>						
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="rotate">
							<h2 class="heading">ADD</h2>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-12">
						<div class="article">
							<form name="addFrm" method="post" action="<c:url value="/learning/addMember.do" />">
								<a class="text_deco_none" href="javascript: addMember();">
									<i class="icon-user-plus"></i>
								</a>
								<a class="blog-img cst_width_100per"> 
									<img class="img-responsive" src="<c:url value="/images/user.jpg" />">
								</a>
								<div class="desc">
									<h2>
										<input type="text" class="cst_width_100per" name="memberName" placeholder="이름">
									</h2>
									<ul>
										<li><input type="text" class="cst_width_100per" name="phoneNumber" placeholder="전화번호"></li>
										<li><input type="text" class="cst_width_100per" name="email" placeholder="이메일"></li>
									</ul>
								</div>
							</form>
						</div>
					</div>						
				</div>
			</div>
		</div>
		
		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

