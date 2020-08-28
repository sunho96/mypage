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
  <li class="active"><a data-toggle="tab" href="${main }/main#diaryList">Home</a></li>
   <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
   <li><a data-toggle="tab" href="#allList">all</a></li>
  <c:forEach var="c" items="${cataList }">
  	 <li><a data-toggle="tab" href="#${c.name }" onclick="cata(${c.diaryCataNum})">${c.name }</a></li>
  </c:forEach>
    
   
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="list"></div>
    <div id="allList"></div>
</div>
</div>
</body>
</html>
