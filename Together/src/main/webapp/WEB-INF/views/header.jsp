<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS-->
<link href="./resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="./resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="./resources/css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script>
	$(document).ready(function() {
		var formObj = $("#loginform2");

		$("#login-btn").on("click", function() {
			formObj.attr("action", "login");
			formObj.attr("method", "post");
			formObj.submit();
		});
	});
</script>


<nav class="navbar navbar-expand-lg navbar-dark bg-light fixed-top"
	id="mainNav">
	<a class="navbar-brand" href="/"
		style="color: #868e96; font-size: 1rem;"><img
		src="./resources/img/PMHlogo1.png"><i>PowerManagerHome</i></a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Main"><a class="nav-link" href="#"> <i
					class="fa fa-fw fa-home"></i> <span class="nav-link-text">Home</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="MyPage"><a class="nav-link" href="#"> <i
					class="fa fa-fw fa-user-circle"></i> <span class="nav-link-text">MyPage</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link" href="#"> <i
					class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">전력량
						차트</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link" href="board/listPage"> <i
					class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">게시판</span>
			</a></li>
			<!--3cys-->
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="3cys"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#product"
				data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-product-hunt"></i> <span class="nav-link-text">3CYS</span>
			</a>
				<ul class="sidenav-second-level collapse" id="product">
					<li><a href="#">제품 소개</a></li>
					<li><a href="#">설치 방법</a></li>
				</ul></li>
			<!--기기등록-->
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="insert"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#setting"
				data-parent="#exampleAccordion"> <i class="fa fa-fw fa-plus"></i>
					<span class="nav-link-text">기기등록 / 관리</span>
			</a>
				<ul class="sidenav-second-level collapse" id="setting">
					<li><a href="#">기기 등록</a></li>
					<li><a href="control">기기 수정 / 관리</a></li>
				</ul></li>
			<!--서비스-->
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="service"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#service"
				data-parent="#exampleAccordion"> <i class="fa fa-fw fa-boxes"></i>
					<span class="nav-link-text">상품 서비스</span>
			</a>
				<ul class="sidenav-second-level collapse" id="service">
					<li><a href="monitoring">모니터링 서비스</a></li>
					<li><a href="#">상품 추천 서비스</a></li>
					<li><a href="#">독거노인 안심 서비스</a></li>
				</ul></li>
			<!--고객지원-->
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Q&A"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#qna" data-parent="#exampleAccordion">
					<i class="fa fa-fw fa-question-circle"></i> <span
					class="nav-link-text">고객지원</span>
			</a>
				<ul class="sidenav-second-level collapse" id="qna">
					<li><a href="#">자주 묻는 질문</a></li>
					<li><a href="#">1:1 문의</a></li>
				</ul></li>
		</ul>
		<ul class="navbar-nav sidenav-toggler"
			style="margin-top: calc(100vh - 62px)">
			<li class="nav-item" style="height: 100vh;"><a
				class="nav-link text-center" id="sidenavToggler"> <i
					class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>


		<form role="form" id="loginform" method="post">
			<input type="hidden" name="id" value="${login.id }"> <input
				type="hidden" name="password" value="${login.password }">
		</form>


		<c:if test="${login.id eq null}">
			<!--상단바 ul-->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="#"
					style="color: #868e96;"> <i class="fa fa-fw fa-registerd"
						style="color: #868e96;"></i>회원가입
				</a></li>

				<li class="nav-item"><a class="nav-link" href="login"
					data-toggle="modal" data-target="#exampleModal"
					style="color: #868e96;"> <i class="fa fa-fw fa-sign-in"
						style="color: #868e96;"></i>로그인
				</a></li>
			</ul>
		</c:if>



		<c:if test="${login.id ne null}">
			<!--상단바 ul-->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mr-lg-2" id="control" href="#"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-fw fa-bolt" style="color: #868e96"></i> <span
						class="d-lg-none" style="color: #868e96">전기 메세지 <span
							class="badge badge-pill badge-primary">New</span>
					</span> <span class="indicator text-primary d-none d-lg-block"> <i
							class="fa fa-fw fa-circle"></i>
					</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="control">
						<h6 class="dropdown-header">메세지</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>300호 전력
								확인해주세요</strong> <span class="small float-right text-muted">11:21
								AM</span>
							<div class="dropdown-message small">평소보다 많은 전력량을 사용하고 있습니다.</div>
						</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown"
					href="#" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-fw fa-bell"
						style="color: #868e96"></i> <span class="d-lg-none"
						style="color: #868e96">메세지 <span
							class="badge badge-pill badge-primary">New</span>
					</span> <span class="indicator text-primary d-none d-lg-block"> <i
							class="fa fa-fw fa-circle"></i>
					</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="messagesDropdown">
						<h6 class="dropdown-header">메세지</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"> <strong>독거노인 안심
								서비스</strong> <span class="small float-right text-muted">12:18 PM</span>
							<div class="dropdown-message small">안심 서비스가 등록되었습니다.</div>
						</a>
					</div></li>
				<li class="nav-item">
					<form class="form-inline my-2 my-lg-0 mr-lg-2">
						<div class="input-group">
							<input class="form-control" type="text"
								placeholder="Search for..."> <span
								class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</li>
				<li class="nav-item"><a class="nav-link" href="logout"
					style="color: #868e96;"> <i class="fa fa-fw fa-sign-out"
						style="color: #868e96;"></i>로그아웃
				</a></li>
			</ul>
		</c:if>
	</div>
</nav>

<!-- Bootstrap core JavaScript-->
<script src="./resources/vendor/jquery/jquery.min.js"></script>
<script src="./resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="./resources/js/sb-admin.min.js"></script>