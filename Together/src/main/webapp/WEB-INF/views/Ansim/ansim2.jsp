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
<script src="https://cdnjs.cloudflare.com/ajax/libs/push.js/1.0.5/push.js"></script>
<script>
	var myContextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ajax-cross-origin.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ansim.js"></script>

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
<body class="sticky-footer bg-dark" id="page-top">
	<div>
		<jsp:include page="../header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<div class="container-fluid">

<!-- 
			<div style="text-align: center">
				<img src="../resources/img/안심메인사진.PNG" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
			</div>
 -->

			<div>
				<div id="thidDiv" class="alert text-center" role="alert">
					<h5>
						<b id="status"></b>
					</h5>
				</div>
				
				<!-- 
				<div id="thidDiv" style="display: inline-block;"></div>
				<div style="display: inline-block; font-size: 20px;">
					<b id="status"></b>

				</div>
				 -->

				<!-- 차트 -->
				<div>
					<canvas id="myAreaChart" height="100%"></canvas>
				</div>
			</div>
			<!-- 한 달 데이터 기준으로 테이블로 보여주기 -->
			<br>
			<hr>
			<div class="container" style="text-align: center;">
				<h2>이 번달 기록</h2>

				<table class="table">
					<thead>
						<tr>
							<th>날짜</th>
							<th>총 평균 사용량</th>
							<th>등록된 기기 사용량</th>
						</tr>
					</thead>
					<c:forEach var="item" items="${list}">

						<tr class="table-info">
							<td>${item.day}</td>
							<td>${item.avg}</td>
							<td>${item.avg/4}</td>
						</tr>
					</c:forEach>
					<tbody>


					</tbody>
				</table>
			</div>

		</div>
	</div>

	<div>
		<jsp:include page="../footer.jsp" flush="false" />
	</div>
</body>
</html>