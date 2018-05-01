<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="description" content="">
<meta name="author" content="">
<style>
/*
.chartWrapper {
	position: relative;
}

.chartWrapper>canvas {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
}

.chartAreaWrapper {
	width: 600px;
	overflow-x: scroll;
}
*/
</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script src="./resources/js/chart.js"></script>
<title>Document</title>


</head>
<body class="fixed-nav sticky-footer bg-light" id="page-top">

	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>

	<div class="content-wrapper">
		<div>
			<jsp:include page="Mainchart.jsp" flush="false" />
		</div>

		<div>
			<jsp:include page="Mainpower.jsp" flush="false" />
		</div>



		<footer class="sticky-footer" style="height: 62px; line-height: 62px;">
			<div class="container">
				<div class="text-center">
					<small>열심히 하자</small>
				</div>
			</div>
		</footer>

		<!-- 맨 위로 가기-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>

		<div>
			<jsp:include page="login.jsp" flush="false" />
		</div>

	</div>

	<!-- Page level plugin JavaScript-->
	<script src="./resources/vendor/chart.js/Chart.min.js"></script>
	<!-- Custom scripts for this page-->
	<!-- <script src="./resources/js/sb-admin-charts.min.js"></script>  -->



</body>
</html>
