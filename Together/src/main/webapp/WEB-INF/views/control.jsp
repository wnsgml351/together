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
<body class="sticky-footer bg-dark" id="page-top">
	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="alert alert-info" role="alert"><h5><b>Smart PDU</b></h5></div>
			<div class="row" style="position: relative;">
				<img src="./resources/img/socket.png" style="border: 1px solid lightgray; border-radius: 0px 15px 15px 0px">
				<div class="fontposition">
					<img src="./resources/img/power-on.png">
					<h2 style="display: inline-block; color: gray">&nbsp본관 300호</h2>
				</div>
				<div class="imgposition">
					<img src="./resources/img/on.png">
				</div>

				<div class="power">
					<label class="switch"> <input type="checkbox" id="checkbox"> <span class="slider round"></span>
					</label>
					<p>OFF</p>
					<p style="display: none;">ON</p>
				</div>
			</div>


		</div>
	</div>
	<div>
		<jsp:include page="footer.jsp" flush="false" />
	</div>

</body>
</html>