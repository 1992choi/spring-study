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
<link rel="stylesheet" href="/choi/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/choi/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/choi/css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="/choi/css/owl.carousel.min.css">
<link rel="stylesheet" href="/choi/css/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/choi/css/magnific-popup.css">
<link rel="stylesheet" href="/choi/css/style.css">
<link rel="stylesheet" href="/choi/css/style_custom.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Modernizr JS -->
<script src="/choi/js/modernizr-2.6.2.min.js"></script>
<!-- jQuery -->
<script src="/choi/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/choi/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/choi/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/choi/js/jquery.waypoints.min.js"></script>
<!-- Owl Carousel -->
<script src="/choi/js/owl.carousel.min.js"></script>
<!-- Magnific Popup -->
<script src="/choi/js/jquery.magnific-popup.min.js"></script>
<script src="/choi/js/magnific-popup-options.js"></script>
<!-- Main JS (Do not remove) -->
<script src="/choi/js/main.js"></script>
<script type="text/javascript">
    function upload() {
        var formData = new FormData($('#fileForm')[0]);
        $.ajax({
            url: '/choi/etc/fileUploadJson.do',
            type: 'POST',
            cache: false,
            dataType: 'json',
            data: formData,
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            success: function(data){
                if (data.fileName == '') {
                    alert('업로드를 실패했습니다. 다시 시도해주세요.');
                    $('#imgDiv').empty();
                } else {
                    $('#imgDiv').html('<img src="/choi/images/upload/' + data.fileName + '" onclick="javascript: download(\'' + data.fileName + '\');" class="cst_width_100per cst_cursor_point">');
                }
            },
            error: function (request, status, error){
                alert('업로드를 실패했습니다. 다시 시도해주세요.');
                $('#imgDiv').empty();
            }
        });
    }

    function download(fileName) {
        location.href = '/choi/etc/fileDownload.do?fileName=' + fileName;
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
		<div id="colorlib-about">
			<div class="container">
				<div class="row text-center">
					<h2 class="bold">Upload</h2>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="item">
							<form id="fileForm" method="post" enctype="multipart/form-data">
                                <input type="file" name="file" placeholder="파일 선택" onchange="javascript: upload();" />
                            </form>
						</div>
					</div>
				</div>
				<div class="row">
                    <div class="col-md-12">
                        <div id="imgDiv" class="cst_min_height_500">
                        </div>
                    </div>
                </div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

