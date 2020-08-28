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

	<form action="AccountDetailUpdate">
		<input type="hidden" name="accountNum" value="${accountBook.accountNum }"> <input type="hidden" name="abookNum" value="${accountBook.abookNum }">
		<table>
			<tr>
				<th>계좌번호</th>
				<td>${accountBook.accountNum }</td>
			</tr>
			<tr>
				<th>거래종류</th>
				<td>
					<label>
						<input type="radio" value="수입" name="dealType" required="required">수입
					</label>
					<label>
						<input type="radio" value="지출" name="dealType">지출
					</label>
				</td>
			</tr>
			<tr>
				<th>금액</th>
				<td>
					<input type="text" name="amount" value="${accountBook.amount }" required="required">
				</td>
			</tr>
			<tr>
				<th>거래처</th>
				<td>
					<input type="text" name="accounts" value="${accountBook.accounts }" required="required">
				</td>
			</tr>
			<tr>
				<th>분류</th>
				<td>
					<label>
						<input type="radio" value="식사" name="category" required="required">식사
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
				<th>날짜</th>
				<td>
					<input type="date" name="regDate" value="${accountBook.regDate }" required="required">
				</td>
			</tr>
			<tr>
				<th>메모</th>
				<td>
					<input type="text" name="memo" value="${accountBook.memo }" required="required">
				</td>
			</tr>
			<tr>
				<th><input type="submit" value="수정"></th>
			</tr>
		</table>
	</form>

	<%@ include file="AccountMain.jsp"%>

</body>
</html>