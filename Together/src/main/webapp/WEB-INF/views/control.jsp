<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="./resources/js/jquery.ajax-cross-origin.min.js"></script>
<script src="./resources/js/control.js"></script>
<link href="./resources/css/control.css" rel="stylesheet" type="text/css">
<title>관리</title>
</head>
<body class="fixed-nav sticky-footer bg-light">
	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<label class="switch"> <input type="checkbox" id="checkbox"> <span class="slider round"></span>
			</label>
			<p>OFF</p>
			<p style="display: none;">ON</p>
		</div>
	</div>


</body>
</html>