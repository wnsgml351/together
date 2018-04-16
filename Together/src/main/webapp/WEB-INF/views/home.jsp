<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>


<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title></title>
<link rel="stylesheet" href="./together/resources/css/main.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- <script src="./together/resources/js/main.js"></script> -->

</head>
<body>

	<header class="navbar navbar-static-top bs-docs-nav" id="top"
		role="banner">
		<div class="container">
			<button class="navbar-toggle collapsed" type="button"
				data-toggle="collapse" data-target=".bs-navbar-collapse"
				style="padding: 35px 10px;">
				<span class="sr-only">네비게이션 끄기/켜기</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div class="navbar-header">
				<a href="#" class="navbar-brand"><img src="./together/resources/img/logo3.png"></a>
			</div>


			<nav class="collapse navbar-collapse bs-navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">로그인</a> <!--
                                    <div class="card card-container" style="width: 350px;">
                                        <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> 
                                        <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                                        <p id="profile-name" class="profile-name-card"></p>
                                        <form class="form-signin">
                                            <span id="reauth-email" class="reauth-email"></span>
                                            <input type="text" id="inputId" class="form-control" placeholder="ID" required autofocus>
                                            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                                            <div id="remember" class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="remember-me"> 아이디 저장
                                                </label>
                                            </div>
                                            <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">로그인</button>
                                        </form><!-- /form 
                                        <a href="#" class="forgot-password">
                                            아이디
                                        </a>
                                        <span> / </span>
                                        <a href="#" class="forgot-password">
                                                비밀번호 찾기
                                            </a>
                                    </div><!-- /card-container --></li>
					<li><a href="#">회원가입</a></li>
					<li><a href="#"><img src="./together/resources/imguser.png"></a></li>
					<li><a href="#"><img src="./together/resources/imgalarm.png"></a></li>
				</ul>
			</nav>

		</div>
		<div class="container">
			<!--masthead-->
			<nav class="collapse navbar-collapse bs-navbar-collapse">
				<ul class="nav nav-justified" style="padding-left: 25px;">
					<li role="presentation" class="active dropdown"
						style="font-size: 17px;"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" role="button"
						aria-expanded="false"><span style="color: #8dc43f;">3C</span><span
							style="color: #0f76ba;">YS</span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">제품소개</a></li>
							<li><a href="#">설치방법</a></li>
						</ul></li>
					<li role="presentation" class="active dropdown"
						style="font-size: 17px;"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" role="button"
						aria-expanded="false"><span style="color: #8dc43f;">기기등록
								/ </span><span style="color: #0f76ba;">관리</span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">기기등록</a></li>
							<li><a href="#">기기수정/관리</a></li>
						</ul></li>
					<li role="presentation" class="active dropdown"
						style="font-size: 17px;"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" role="button"
						aria-expanded="false"><span style="color: #8dc43f;">상품</span><span
							style="color: #0f76ba;">서비스</span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">모니터링 서비스</a></li>
							<li><a href="#">상품 추천 서비스</a></li>
							<li><a href="#">독거노인 안심 서비스</a></li>
						</ul></li>
					<li role="presentation" class="active dropdown"
						style="font-size: 17px;"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" role="button"
						aria-expanded="false"><span style="color: #8dc43f;">고객</span><span
							style="color: #0f76ba;">지원</span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">자주묻는 질문</a></li>
							<li><a href="#">1:1문의하기</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</header>

	<div class="jumbotron bs-example" data-example-id="aligned-pager-links">
		<h2>실시간 전력 그래프</h2>
		<!--
	<nav aria-label="Page navigation example">
  <ul class="pager">
    
    <li class="next"><a href="#">More <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
-->
	</div>

	<div>
		<div class="col-lg-4">
			<h2>현재 전력 소비량</h2>

		</div>
		<div class="col-lg-4">
			<h2>한 달 전력 소비량</h2>

		</div>
		<div class="col-lg-4">
			<h2>누진 단계</h2>

		</div>
	</div>


</body>
</html>
