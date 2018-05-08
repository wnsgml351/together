<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<script src="../resources/js/ansim.js"></script>
<style>
.card-body-icon {
	position: absolute;
	z-index: 0;
	top: 5px !important;
	right: -0px !important;
	font-size: 3rem !important;
	-webkit-transform: rotate(15deg);
	-ms-transform: rotate(15deg);
	transform: rotate(0deg) !important;
}

.uicard {
	width: 100%;
	padding-bottom: 5px;
	padding-top: 5px;
	padding-left: 5px;
	padding-right: 5px;
	border: 1px solid lightgray;
	box-shadow: 2px 2px lightgray;
}

.safety {
	width: 50px;
	height: 50px;
	background: green;
	border-radius: 100px;
}

.danger {
	width: 50px;
	height: 50px;
	background: red;
	border-radius: 100px;
}
</style>
</head>
<body>
	<div id="thidDiv" style="display: inline-block;"></div>
	<div style="display: inline-block; font-size: 20px;">
		<b id="status"></b>
	</div>
	
	<div class="card-body">
		<canvas id="myAreaChart" height="100%"></canvas>
	</div>
</body>
</html>