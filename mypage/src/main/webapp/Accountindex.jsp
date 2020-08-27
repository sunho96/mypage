<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <script type="text/javascript">
		location.href = "main"
	</script> -->
	세션 아이디 : ${sessionScope.memberNum }
	<hr>
	<a href="AccountInsertForm">계좌 추가하기</a>
	<hr>
	<a href="AccountList">계좌 목록 보기</a>
</body>
</html>