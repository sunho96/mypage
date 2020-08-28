<!DOCTYPE html>
<html>
<head>
<%@ include file="../header.jsp" %>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	$(function() {
		$("#list").load("diary/list");
  	});
  	function cata(num) {
		alert("num="+num);
		location.href="diary/typeList?diaryCataNum="+num;
	}
	
  </script>
</head>
<body>

<div class="container">
  <ul class="nav nav-tabs">
   <li class="active"><a data-toggle="tab" href="#allList">all</a></li>
  <c:forEach var="c" items="${cataList }">
  	 <li><a data-toggle="tab" href="#${c.name }" onclick="cata(${c.diaryCataNum})">${c.name }</a></li>
  </c:forEach>
    
   
  </ul>

  <div class="tab-content">
    <div id="list"></div>
    <div id="allList"></div>
</div>
</div>
</body>
</html>
