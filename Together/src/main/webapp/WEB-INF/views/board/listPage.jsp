<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<style>
</style>
<script>
	$(".pagination li a").on("click", function(event) {
		event.prevenDefault();
		var targetPage = $(this).attr("href");

		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/board/listPage").attr("method", "get");
		jobForm.submit();
	});
</script>
</head>
<body>
	<h1>게시글 목록</h1>
	<table class="table table-striped table-hover">
		<tr>
			<th>BNO</th>
			<th>TITLE</th>
			<th>WRITER</th>
			<th>REGDATE</th>
			<th>VIEWCNT</th>
		</tr>
		<c:forEach items="${list}" var="boardVO">
			<tr>
				<td>${boardVO.bno}</td>
				<td><a
					href="readPage${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${boardVO.bno}">${boardVO.title}</a></td>
				<td>${boardVO.writer}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${boardVO.regdate}" /></td>
				<td><span class="badge bg-reg">${boardVO.viewcnt}</span></td>
			</tr>
		</c:forEach>
	</table>


	<div class="text-center">
		<ul class="pagination">

			<c:if test="${pageMaker.prev }">
				<li><a
					href="listPage${pageMaker.makeQuery(pageMaker.startPage-1)}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<li <c:out value="${pageMaker.cri.page==idx?'class=active':''}"/>>
					<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next&&pageMaker.endPage>0 }">
				<li><a
					href="listPage${pageMaker.makeQuery(pageMaker.endPage+1)}">&raquo;</a></li>
			</c:if>
	
	<input type="button" value="글쓰기" id="writing" Onclick="window.location='smartView'">
		</ul>
	</div>
	<form id="jobForm">
		<input type="hidden" name="page" value=${pageMaker.cri.perPageNum }>
		<input type="hidden" name="perPageNum"
			value=${pageMaker.cri.perPageNum }>
	</form>
</body>
</html>