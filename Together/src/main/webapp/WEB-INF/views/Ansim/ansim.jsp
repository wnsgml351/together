<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>안심</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ansim.js"></script>
</head>
<body class="sticky-footer bg-dark" id="page-top">
	<div>
		<jsp:include page="../header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div>
				<canvas id="myAreaChart" height="100%"></canvas>
			</div>
		</div>
	</div>

	<div>
		<jsp:include page="../footer.jsp" flush="false" />
	</div>
</body>
</html>