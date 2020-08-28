<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	세션 아이디 : ${sessionScope.memberNum }

	<form action="AccountDetailInsert">
		<input type="hidden" name="accountNum" value="${accountNum }">
		<table>
			<tr>
				<th>계좌 번호</th>
				<td>${accountNum }</td>
			</tr>
			<tr>
				<th>거래종류</th>
				<td>
					<label>
						<input type="radio" value="수입" name="dealType">수입
					</label>
					<label>
						<input type="radio" value="지출" name="dealType">지출
					</label>
				</td>
			</tr>
			<tr>
				<th>금액</th>
				<td>
					<input type="text" name="amount">
				</td>
			</tr>
			<tr>
				<th>거래처</th>
				<td>
					<input type="text" name="accounts">
				</td>
			</tr>
			<tr>
				<th>분류</th>
				<td>
					<label>
						<input type="radio" value="식사" name="category">식사
					</label>
					<label>
						<input type="radio" value="통신요금" name="category">통신요금
					</label>
					<label>
						<input type="radio" value="집세" name="category">집세
					</label>
					<label>
						<input type="radio" value="교통비" name="category">교통비
					</label>
				</td>
			</tr>
			<tr>
				<th>메모</th>
				<td>
					<input type="text" name="memo">
				</td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="입력"></th>
			</tr>
		</table>
	</form>

	<%@ include file="AccountMain.jsp"%>

</body>
</html>