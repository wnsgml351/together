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

		//var formObj=$("form");

		$("#roomAdd").click(function() {

			var groupName = $("#group_name").val();

			var groupNo = $("#group_no").val();

			alert('그룹이름' + groupName + '그룹번호' + groupNo);

			$.ajax({

				url : "groupRepeat",

				data : {

					group_name : groupName,

					parent_group : groupNo

				},

				dataType : 'json',

				success : function(data) {

					alert('성공');

				},

				error : function() {

					//alert('실패');

				}

			});

		});

		$("#next").click(function() {

			alert('다음 누름');

			window.location.href = "roomList";

		});

	});
</script>



<script type="text/javascript">
	var cnt = 0;

	var imgs = [ [ "resources/img/room1.PNG" ], [ "resources/img/room2.PNG" ],
			[ "resources/img/room3.PNG" ], [ "resources/img/room4.PNG" ],
			[ "resources/img/room5.PNG" ], [ "resources/img/room6.PNG" ] ];

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

			<h1>방 등록</h1>

			<br>

			<hr>



			<div class="row">

				<div class="col-sm-4" style="background-color: lavender; height: 850px">

					&nbsp;

					<br>
					<br>

					<input type="hidden" name="group_no" value="${build.group_no}" id="group_no">

					<div class="container" style="text-align: center;">

						<img src="resources/img/room1.PNG" style="width: 70%" id="banner">

					</div>



				</div>



				<div class="col-xs-4 col-sm-6 room_num" style="background-color: lavenderblush;">

					<br>
					<br>
					<br>

					<div class="row">

						<div class="col-sm-4"></div>

						<div class="col-sm-4">

							<div class="form-group">

								<label for="inputdefault">방 이름</label> <input class="form-control" type="text" name="group_name" id="group_name">

							</div>

							<button class="btn btn-danger pull-right" id="roomAdd">등록</button>

						</div>

						<div class="col-sm-4"></div>

					</div>

					<br>
					<br>
					<br>
					<hr>

					<div class="pull-right">

						<button class="btn btn-info" id="next">다음</button>

					</div>

				</div>


			</div>

			<div>
				<jsp:include page="footer.jsp" flush="false" />
			</div>
		</div>
	</div>
</body>

</html>