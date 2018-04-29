<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);

	$(".btn-danger").on("click", function() {
		self.location="/web/board/listAll";
	});
	
	$(".btn-primary").on("click", function() {
		formObj.submit();
	});
})
</script>
<body>
	<form role="form" method="post">

		<div>
			<label>Bno</label> <input type="text" name="bno"
				value="${boardVO.bno}" readonly="readonly">
		</div>


		<div>
			<label>Title</label> <input type="text" name="title"
				value="${boardVO.title}">
		</div>
		<div>
			<label>Content</label>
			<textarea rows="3" name="content" value="${boardVO.content}">Content</textarea>
		</div>
		<div>
			<label>Writer</label> <input type="text" name="writer"
				,value="${boardVO.writer}" readonly="readonly">
		</div>
	</form>
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-danger">Cancle</button>
	
</body>
</html>