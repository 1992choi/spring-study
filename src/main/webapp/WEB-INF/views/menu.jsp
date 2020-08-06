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
								<a  class="cst_va_sub" href="/choi/main.do"><i class="icon-home"></i> HOME</a>
							</li>
							<li>
								<a href="javascript: openSubMenu('algorithm');">Algorithm</a>
								<ul id="sub_algorithm" class="sub_menu dn">
									<li><a href="/choi/algorithm.do?page=sort">Sort</a></li>
									<li><a href="#">Algorithm #2</a></li>
									<li><a href="#">Algorithm #3</a></li>
									<li><a href="#">Algorithm #4</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript: openSubMenu('api');">API</a>
								<ul id="sub_api" class="sub_menu dn">
									<li><a href="/choi/navi.do">Navi</a></li>
								</ul>
							</li>
							<li>
								<a href="javascript: openSubMenu('etc');">ETC</a>
								<ul id="sub_etc" class="sub_menu dn">
									<li><a href="/choi/imgResize.do">Image Resize</a></li>
									<li><a href="/choi/fileUpload.do">File Upload</a></li>
								</ul>
							</li>
							<li>
								<a href="/choi/contact.do">Contact</a>
							</li>
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