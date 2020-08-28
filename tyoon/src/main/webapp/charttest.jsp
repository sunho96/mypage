<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      google.charts.setOnLoadCallback(drawChart2);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', ],
          ['Work', ],
          ['Eat',  ],
          ['Commute', ],
          ['Watch TV', ],
          ['Sleep', ],
          ['Sleep', ],
          ['Sleep', ]
        ]);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
      
      function drawChart2() {

        var data = google.visualization.arrayToDataTable([
          ['Work',     11],
          ['Eat',      0],
          ['Commute',  3],
          ['Watch TV', 2],
          ['Sleep',    7],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
  <h1>1번차트</h1>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  <h1>2번차트</h1>
    <div id="piechart2" style="width: 900px; height: 500px;"></div>
  </body>
</html>

