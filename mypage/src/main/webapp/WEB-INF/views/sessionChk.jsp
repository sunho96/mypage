<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="email" value="${sessionScope.email }"/>
<c:if test="${empty email }">
	<script type="text/javascript">
	alert("로그인이 필요한 서비스입니다.");
	location.href="loginForm";
	</script>
</c:if>
</body>
</html>