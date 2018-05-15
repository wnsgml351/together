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
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/totallist.js"></script>

</head>

<body class="sticky-footer bg-dark" id="page-top">

	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>

	<div class="content-wrapper">
		<div class="container-fluid">
			<br>
			<div style="text-align: center;">
				<h1>전체 리스트</h1>
			</div>
			<br>
			<hr>

			<div class="container" style="margin-top: 30px">
				<div class="row">
					<div class="col-sm-4">
						<div style="text-align: center;">${root}</div>
						<hr>
						<c:forEach var="sub1" items="${sub1}">
							<div style="text-align: center; border: dotted;" class="super" id="${sub1.group_no }">${sub1.group_name}</div>
						</c:forEach>
						<br>
						<hr>
						<c:forEach var="sub2" items="${sub2}">
							<button class="btn btn-default room" style="margin: 15px" id="${sub2.group_no}">${sub2.group_name}</button>
						</c:forEach>
						<hr>
						
						<hr>
							<button class="btn btn-default room" style="margin: 15px">테스트방</button>
						<hr>

						<div class="consent"></div>
					</div>
					<div class="col-sm-8">
						<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
					</div>
				</div>
			</div>

		</div>
		<div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	</div>

</body>
</html>