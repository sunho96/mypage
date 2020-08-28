<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function Delete(abookNum) {
	var con;
	con = confirm("삭제 하시겠습니까?");
	if(con){
		event.preventDefault();
		$.post('AccountDetailDeleteForm',"abookNum=" + abookNum, function(data) {
			alert(data);
			location.reload();
		});
	}
		else alert("삭제 취소");
}
</script>
</head>
<body>
	세션 아이디 : ${sessionScope.memberNum }

	<h2>계좌번호 : ${accountNum }</h2>
	<a href="AccountDetailInsertForm?accountNum=${accountNum }">계좌 상세내역 추가하기</a>
	<table>
		<tr>
			<th>거래종류</th>
			<th>금액</th>
			<th>거래처</th>
			<th>분류</th>
			<th>날짜</th>
			<th>메모</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<!-- 계좌 상세내역 불러옴 -->
		<c:forEach var="detail" items="${AccountBookList}">
			<tr>
				<td>${detail.dealType }</td>
				<td>${detail.amount }</td>
				<td>${detail.accounts }</td>
				<td>${detail.category }</td>
				<td>${detail.regDate }</td>
				<td>${detail.memo }</td>
				<td>
					<a href="AccountDetailUpdateForm?abookNum=${detail.abookNum }">수정</a>
				</td>
				<td>
					<a href="" onclick="Delete(${detail.abookNum})">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	잔액 : ${total }

	<%@ include file="AccountMain.jsp"%>

</body>
</html>