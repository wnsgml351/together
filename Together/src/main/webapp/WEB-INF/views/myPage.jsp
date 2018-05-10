<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 정보</title>
</head>
<body class="sticky-footer bg-dark" id="page-top">


	<div>
		<jsp:include page="header.jsp" flush="false" />
	</div>
	<div class="content-wrapper">
		<div class="container-fluid">
			<h1>여긴 내 정보 페이지</h1>
		</div>

		<div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	</div>
</body>
</html>