<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<title>P. M. H</title>
</head>
<body class="sticky-footer bg-dark" id="page-top">

	<c:if test="${login.id eq null}">
		<div>
			<jsp:include page="guestheader.jsp" flush="false" />
		</div>
	</c:if>

	<c:if test="${login.id ne null}">
		<div>
			<jsp:include page="header.jsp" flush="false" />
		</div>
	</c:if>

	<div class="content-wrapper">
		<div class="container-fluid">
			<div>
				<jsp:include page="mainpower.jsp" flush="false" />
			</div>

			<div>
				<jsp:include page="mainchart.jsp" flush="false" />
			</div>

			<div>
				<jsp:include page="mainnotice.jsp" flush="false" />
			</div>
		</div>

		<div>
			<jsp:include page="footer.jsp" flush="false" />
		</div>


	</div>



</body>