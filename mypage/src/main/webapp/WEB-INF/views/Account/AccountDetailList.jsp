<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 삭제버튼 눌렀을 때 실행될 jquery -->
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
<!-- 구글 차트 -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      google.charts.setOnLoadCallback(drawChart2);
		/* 수입차트 */
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
			['수입', '금액'],
			['급여', ${detailTotal.insal}],
			['주식', ${detailTotal.insto}],
			['복권', ${detailTotal.inlot}],
			['기타', ${detailTotal.inetc}]
        ]);

        var options = {
          title: '수입차트'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
		/* 지출차트 */
      function drawChart2() {

        var data = google.visualization.arrayToDataTable([
			['지출', '금액'],
			['식사',		${detailTotal.exprice}],
			['통신요금',	${detailTotal.expcel}],
			['집세',		${detailTotal.exprent}],
			['교통비',		${detailTotal.expfare}],
			['기타 TV',		${detailTotal.expetc}]
        ]);

        var options = {
          title: '지출차트'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

        chart.draw(data, options);
      }
</script>
<!-- table -->
<script type="text/javascript">
$(function() {
	// Change the selector if needed
	var $table = $('#detail'),
	    $bodyCells = $table.find('tbody tr:first').children(),
	    colWidth;

	// Get the tbody columns width array
	colWidth = $bodyCells.map(function() {
	    return $(this).width();
	}).get();

	// Set the width of thead columns
	$table.find('thead tr').children().each(function(i, v) {
	    $(v).width(colWidth[i]);
	});    
})
</script>
</head>
<body>
	세션 아이디 : ${sessionScope.memberNum }

	<h2>계좌번호 : ${accountNum }</h2>
	<a href="AccountDetailInsertForm?accountNum=${accountNum }">계좌 상세내역 추가하기</a>
	<!-- 원형그래프가 그려질 위치 -->
	<div style="height: 700px; overflow: auto;">
		<table style="width: 1500px; height: 600px;">
			<tr>
				<td id="piechart" style="width: 50%;"></td>
				<td id="piechart2" style="width: 50%;"></td>
			</tr>
		</table>
	</div>
	<!-- 상세내역 표시 위치 -->
	<table id="detail">
		<thead style="display: block;">
			<tr style="background: #eef7ff;">
				<th>거래종류</th>
				<th>금액</th>
				<th>거래처</th>
				<th>분류</th>
				<th>날짜</th>
				<th>메모</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<!-- 계좌 상세내역 불러옴 -->
		<tbody style="display: block; height: 350px; overflow: auto;">
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
		</tbody>
	</table>
	잔액 : ${total }

	<%@ include file="AccountMain.jsp"%>
</body>
</html>