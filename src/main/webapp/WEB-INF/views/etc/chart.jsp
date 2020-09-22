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
<!-- Google Chart -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		google.charts.load("current", {packages:['corechart']});
	    google.charts.setOnLoadCallback(drawChart);
	});

	function drawChart() {
		// Column Charts
		var columnData = google.visualization.arrayToDataTable([
		    		["Element", "Ratings", { role: "style" } ],
		    		["Java", 16.89, "rgb(51, 102, 204)"],
		    		["C", 15.77, "rgb(220, 57, 18)"],
		    		["C++", 5.57, "rgb(255, 153, 0)"],
		    		["Python", 9.07, "rgb(16, 150, 24)"],
		    		["JavaScript", 2.45, "rgb(153, 0, 153)"]
	    		]);
	
		var columnView = new google.visualization.DataView(columnData);
		columnView.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);
	
		var columnOptions = {
			title : "Programming Language",
			width : 600,
			height : 400,
			bar : {
				groupWidth : "95%"
			},
			legend : {
				position : "none"
			},
		};
		
		var columnChart = new google.visualization.ColumnChart(document.getElementById("columnChart"));
		columnChart.draw(columnView, columnOptions);
		
		// Pie Charts
		var pieData = google.visualization.arrayToDataTable([
			['Element', 'Ratings per Day'],
			["Java", 16],
    		["C", 15],
    		["C++", 5],
    		["Python", 9],
    		["JavaScript", 2],
    		["etc", 53]
		]);

        var pieOptions = {
        	title : "Programming Language",
        	width : 600,
			height : 400,
          	is3D: true,
        };

        var pieChart = new google.visualization.PieChart(document.getElementById('pieChart'));
        pieChart.draw(pieData, pieOptions);
        
        // Bar Chart
        var barChart = new google.visualization.BarChart(document.getElementById("barChart"));
        barChart.draw(columnView, columnOptions); // column chart와 동일한 값이어서 재활용
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
					<h2 class="bold">CHART</h2>
				</div>
				<div id="columnChart" class="cst_center cst_width_600 cst_pd_top60"></div>
				<div id="pieChart" class="cst_center cst_width_600 cst_pd_top60"></div>
				<div id="barChart" class="cst_center cst_width_600 cst_pd_top60"></div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />

	</div>
</body>
</html>

