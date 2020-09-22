<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<script type="text/javascript">	
		function openSubMenu(subMenu) {
			$('.sub_menu').hide();
			$('#sub_' + subMenu).show();
		}
	</script>
	<nav id="colorlib-main-nav" role="navigation">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
		<div class="js-fullheight colorlib-table">
			<div class="colorlib-table-cell js-fullheight">
				<div class="row">
					<div class="col-md-12">
						<ul>
							<li class="active">
								<a  class="cst_va_sub" href="<c:url value="/main.do" />"><i class="icon-home"></i> HOME</a>
							</li>
							<li>
								<a href="javascript: openSubMenu('learning');">Learning</a>
								<ul id="sub_learning" class="sub_menu dn">
									<li><a href="<c:url value="/learning/algorithm.do" />">Algorithm</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript: openSubMenu('api');">API</a>
								<ul id="sub_api" class="sub_menu dn">
									<li><a href="<c:url value="/api/navi.do" />">Navi</a></li>
									<li><a href="<c:url value="/api/otp.do" />">OTP</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript: openSubMenu('etc');">ETC</a>
								<ul id="sub_etc" class="sub_menu dn">
									<li><a href="<c:url value="/etc/imgResize.do" />">Image Resize</a></li>
									<li><a href="<c:url value="/etc/fileUpload.do" />">File Upload</a></li>
									<li><a href="<c:url value="/etc/multilingue.do" />">i18n</a></li>
									<li><a href="<c:url value="/etc/chart.do" />">Chart</a></li>
								</ul>
							</li>
							<li>
								<a href="<c:url value="/contact.do" />">Contact</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<a href="<c:url value="/images/menu_img1.jpg" />" class="gallery image-popup-link text-center" style="background-image: url(<c:url value="/images/menu_img1.jpg" />);"> 
							<span><i class="icon-search3"></i></span>
						</a> 
						<a href="<c:url value="/images/menu_img2.jpg" />" class="gallery image-popup-link text-center" style="background-image: url(<c:url value="/images/menu_img2.jpg" />);">
							<span><i class="icon-search3"></i></span>
						</a> 
						<a href="<c:url value="/images/menu_img3.jpg" />" class="gallery image-popup-link text-center" style="background-image: url(<c:url value="/images/menu_img3.jpg" />);">
							<span><i class="icon-search3"></i></span>
						</a>
						<a href="<c:url value="/images/menu_img4.jpg" />" class="gallery image-popup-link text-center" style="background-image: url(<c:url value="/images/menu_img4.jpg" />);">
							<span><i class="icon-search3"></i></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>