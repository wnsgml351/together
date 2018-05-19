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

li {
	list-style: none;
}
</style>


</head>
<body class="sticky-footer bg-dark" id="page-top">

	<div>
		<jsp:include page="../header.jsp" flush="false" />
	</div>

	<div class="content-wrapper">
		<div class="container-fluid">
			<!--모니터링 서비스-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">에러 페이지</a></li>
			</ol>
			<h2>영구적으로 접근이 제한되었습니다.</h2>
		</div>
	</div>
	
	<div>
		<jsp:include page="../footer.jsp" flush="false" />
	</div>
</body>
</html>