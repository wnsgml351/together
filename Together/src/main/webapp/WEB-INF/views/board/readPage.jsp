<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/Together/board/modify2");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/Together/board/remove");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "listPage");
			formObj.submit();
		});
	});
</script>

<style>
#title {
	width: 1000px;
	border: 1.5px solid;
	font-size: 30px;
}

#content {
	width: 1000px;
	height: 500px;
}

hr {
	
}
</style>
</head>

<body>


	<form role="form" method="post">
		<input type="hidden" name="bno" value="${boardVO.bno}">
	</form>

	<div id="title">
		<label>${boardVO.title}</label>
	</div>

	<div>
		<hr>
		<div id="content">
			<label>${boardVO.content}</label>
		</div>
		<hr>
	</div>

	<div id="wrtier">
		<label>${boardVO.writer}</label>
	</div>

	<div class="box-footer">
		<button type="submit" class="btn btn-warning">수정</button>
		<button type="submit" class="btn btn-danger">삭제</button>
		<button type="submit" class="btn btn-primary">목록</button>
	</div>

	<form role="form" action="modifyPage" method="post">
		<input type="hidden" name="bno" value="${boardVO.bno }"> <input
			type="hidden" name="page" value="${cri.page }"> <input
			type="hidden" name="perPageNum" value="${cri.perPageNum }">
	</form>
</body>
</html>