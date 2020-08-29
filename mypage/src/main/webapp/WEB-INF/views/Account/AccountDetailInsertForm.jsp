<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- id가 accsubmit인 a태그를 클릭했을 때 -->
<script type="text/javascript">
	$(function() {
		$("#accsubmit")
				.click(
						function() {
							var link = $(this).attr("href");
							event.preventDefault();
							$
									.post(
											link,
											"accountNum" + frm.accountNum.value
													+ "dealType"
													+ frm.dealType.value
													+ "amount"
													+ frm.amount.value
													+ "category"
													+ frm.category.value
													+ "accounts"
													+ frm.accounts.value
													+ "regDate"
													+ frm.regDate.value
													+ "memo" + frm.memo.value,
											function(data) {
												$("#Accountdisp")
														.load(
																"AccountDetailList?accountNum=${accountNum }");
											});
						});
	});
</script>
<!-- 불러왔을때 a태그 실행 방지 -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#Accountdisp a").click(function() {
			var link = $(this).attr("href");
			event.preventDefault();
			$.post(link, "", function(data) {
				$("#Accountdisp").load(link);
			});
			return false;
		});
	});
</script>
<script type="text/javascript">
	/* 수입 카테고리 */
	data1 = '<label><input type="radio" value="급여" name="category" required="required">급여</label><label><input type="radio" value="주식" name="category">주식</label><label><input type="radio" value="복권" name="category">복권</label><label><input type="radio" value="기타" name="category">기타</label>';
	/* 지출 카테고리 */
	data2 = '<label><input type="radio" value="식사" name="category" required="required"> 식사</label><label><input type="radio" value="통신요금" name="category"> 통신요금</label><label><input type="radio" value="집세" name="category"> 집세</label><label><input type="radio" value="교통비" name="category"> 교통비</label><label><input type="radio" value="기타" name="category">기타</label>';

	/* 수입을 선택했을 때 */
	function dealType1() {
		$("#category").html(data1)
	}
	/* 지출을 선택했을 때 */
	function dealType2() {
		$("#category").html(data2)
	}
</script>
</head>
<body>

	세션 아이디 : ${sessionScope.memberNum }

	<form action="" name="frm">
		<input type="hidden" name="accountNum" value="${accountNum }">
		<table>
			<tr>
				<th>계좌 번호</th>
				<td>${accountNum }</td>
			</tr>
			<tr>
				<th>거래종류</th>
				<td>
					<!-- <select>
					<option value="수입" name="dealType" required="required" onclick="dealType1()">수입</option>
					<option value="지출" name="dealType" onclick="dealType2()">지출</option>
					</select> -->
					<label>
						<input type="radio" value="수입" name="dealType" required="required" onclick="dealType1()"> 수입
					</label>
					<label>
						<input type="radio" value="지출" name="dealType" onclick="dealType2()"> 지출
					</label>
				</td>
			</tr>
			<tr>
				<th>금액</th>
				<td>
					<input type="text" name="amount" required="required">
				</td>
			</tr>
			<tr>
				<th>거래처</th>
				<td>
					<input type="text" name="accounts" required="required">
				</td>
			</tr>
			<tr>
				<th>분류</th>
				<td id="category">거래 종류를 선택하세요</td>
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
					<input type="text" name="memo" required="required">
				</td>
			</tr>
		</table>
		<a href="AccountDetailInsert" id="accsubmit">입력</a>
		<!-- <input type="submit" value="입력"> -->
	</form>

	<%@ include file="AccountMain.jsp"%>

</body>
</html>