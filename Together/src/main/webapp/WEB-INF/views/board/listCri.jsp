<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<table>
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
				<td><a href='/Together/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>

				<td>${boardVO.writer}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${boardVO.regdate}" /></td>
				<td>${boardVO.viewcnt}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>