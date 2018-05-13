<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:if test="${login.id eq null}">
	<script>
		location.href = "${pageContext.request.contextPath}/home";
	</script>
</c:if>