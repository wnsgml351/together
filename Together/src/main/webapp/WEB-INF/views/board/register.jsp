<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
				<label for="exampleIntputEmail1">Title</label> <input type="text"
					name="title" ,class='form-contol' placeholder="Enter Title">
			</div>
			<div class="form-group">
				<label for="exampleIntputPassword1">Content</label>
				<textarea class="form-control" name="content" rows="3"
					placeholder=""></textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="exampleIntputEmail1">Write</label> <input type="text"
				name="writer" ,class='form-contol' placeholder="Enter Writer">
		</div>
		<div class="box-footer">
				<button type="submit" class="btn btn-primary">submit</button>
			</div>

	</form>

</body>
</html>