<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link href="./resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
	
<title>Insert title here</title>

<style>
.btnblock {
	margin-top: 1rem;
}

.btnblock>button {
	width: 200px;
}

p {
	font-size: 14px;
	margin-top: 2rem;
	margin-bottom: 2rem;
}
</style>
</head>
<body style="background-color: purple; background: rgba(111, 66, 193, 0.5)">
    <div class="container mt-auto text-center" style="font-size: 5rem; color: #f8f9fa;">
        <img src="./resources/img/logo.png" class="rounded mx-auto d-block" style="margin-top: 10rem;">
        <b>Power Manager Home</b>
        <p>저희 파워 매니저 홈에 방문해주셔서 감사합니다.<br>
        저희 홈페이지를 통해 가정에서 쓰는 전기를 절약 해보세요<br>
        회원이 아니실 경우에는 체험하기 버튼을 통하여 기능들을 미리 만나보세요!</p>
        <div class="btnblock">
            <a href="login" class="btn btn-outline-light btn-lg" style="width: 250px;">로그인</a>
        </div>

        <div class="btnblock" style="margin-bottom: 10rem">
            <a href="main" class="btn btn-outline-light btn-lg" style="width: 250px;">체험하기</a>
        </div>

    </div>

</body>
</html>