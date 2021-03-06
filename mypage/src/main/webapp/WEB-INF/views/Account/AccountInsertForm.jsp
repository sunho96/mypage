<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
<!-- 중복체크 눌렀을 때  -->
<script type="text/javascript">
	function accchk() {
		event.preventDefault();
		$.post('accountNumChk', 'accountNum=' + accfrm.accountNum.value,
				function(data) {
					$('#accountNumChk').html(data);
				});
	}
</script>
<!-- submit 눌렀을 때 -->
<script type="text/javascript">
	$("#accsub").click(function() {
		var accData = $("#accfrm").serializeArray();
		var accLink = $("#accfrm").attr("action")
		event.preventDefault();
		$.post(accLink, accData, function(result) {
			alert("입력 완료 !");
			$("#Accountdisp").load("AccountList");
		});
	});
</script>
</head>
<body>
	세션 아이디 : ${sessionScope.memberNum }
	<form action="AccountInsert" method="post" name="accfrm" id="accfrm" onsubmit="return accchk()">
		<input type="hidden" name="memberNum" value="${sessionScope.memberNum }"> <input type="hidden" name=total value="0">
		<table class="table">
			<tbody>
				<tr>
					<th>계좌번호</th>
					<td>
						<input type="text" name="accountNum" required="required"> <input type="button" onclick="accchk()" value="중복체크">
						<div id="accountNumChk"></div>
					</td>
				</tr>
				<tr>
					<th>은행</th>
					<td>
						<input type="text" name="bank" required="required">
					</td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="입력" id="accsub"></th>
				</tr>
			</tbody>
		</table>
	</form>

	<%@ include file="AccountMain.jsp"%>

</body>
</html>