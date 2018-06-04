<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="description" content="">
<meta name="author" content="">
<title>Document</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {

		var formObj = $("form");

		$("#Bregister").click(function() {

			//window.location="Rregister";

			formObj.attr("action", "Bregist");

			formObj.attr("method", "get");

			formObj.submit();

		});

	});
</script>



<script type="text/javascript">
	var cnt = 0;

	var imgs = [ [ "resources/img/home1.PNG" ], [ "resources/img/home2.PNG" ],
			[ "resources/img/home3.PNG" ], [ "resources/img/home4.PNG" ],
			[ "resources/img/home5.PNG" ], [ "resources/img/home6.PNG" ] ];

	function changeBanner() {

		document.getElementById("banner").src = imgs[cnt];

		setTimeout(function() {

			cnt++;

			if (cnt == imgs.length)
				cnt = 0;

			changeBanner();

		}, 2000);

	}

	window.onload = changeBanner;
</script>

</head>

<body class="sticky-footer bg-dark" id="page-top">

	<div>

		<jsp:include page="header.jsp" flush="false" />

	</div>

	<div class="content-wrapper">
		<div class="container-fluid">

			<br>

			<center>

				<h1>건물 등록 페이지</h1>

			</center>

			<br>

			<hr>

			<form role="form" method="get">



				<div class="row">

					<div class="col-sm-4" style="background-color: lavender; height: 50%">

						&nbsp;

						<br>
						<br>
						<br>

						<div class="container" style="text-align: center;">

							<img src="resources/img/home1.PNG" style="width: 70%" id="banner">

						</div>

						<br>



					</div>

					<div class="col-sm-8" style="background-color: lavenderblush;">



						<div class="form-group" style="width: 10%">

							<br>
							<br>
							<br>

							<label for="inputdefault">건물 이름</label> <input class="form-control" type="text" name="group_name">

						</div>



						<br>

						<div class="row">

							<div class="col-sm-3 text-center">

								<button id="Bregister" class="btn btn-primary btn-block">등록</button>

							</div>



							<div class="col-sm-3 text-center">

								<button id="BCancel" class="btn btn-warning btn-block">취소</button>

							</div>

						</div>



					</div>

					<input type="hidden" name="id" value="${sessionId.id}">

				</div>

			</form>

		</div>

		<div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	</div>
</body>

</html>