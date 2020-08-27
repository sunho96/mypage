<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션 아이디 : ${sessionScope.memberNum }
	<form action="AccountInsert">
		<input type="hidden" name="memberNum" value="${sessionScope.memberNum }">
		<table>
			<tr>
				<th>계좌번호</th>
				<td><input type="text" name="accountNum"></td>
			</tr>
			<tr>
				<th>은행</th>
				<td><input type="text" name="bank"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="입력"></th>
			</tr>
		</table>
	</form>
</body>
</html>