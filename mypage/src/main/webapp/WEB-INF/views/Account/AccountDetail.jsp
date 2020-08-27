<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션 아이디 : ${sessionScope.memberNum }

	<h2>계좌번호 : ${accountNum }</h2>	
	<table>
		<tr>
		</tr>
	</table>
	
	
	<%@ include file="AccountMain.jsp"%>
</body>
</html>