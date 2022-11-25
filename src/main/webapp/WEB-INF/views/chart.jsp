<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- title -->
	<title>Respond to Contact</title>
	
	<!-- 아래 2개 임포트가 중요함 -->
	<!-- jquery -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- chart -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js"></script> 
	
	
	<script type="text/javascript">
	
	$(function(){ 
	
		$.getJSON("sales/"+new Date().getFullYear()).done( //use to be year variable
		function(data){ 
			console.log(data); 
			var ctx=$("#ctx").get(0).getContext('2d'); 
			var labels=data.map(obj=>obj.MONTH); 
			var datas=data.map(obj=>obj.SALES); 
			var bgColor=['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ]; 
			var borderColor=[ 'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ]; 
			var myChart = new Chart(ctx, { 
				type: 'line', 
				data: { labels: labels , datasets: [{ label: 'Sales Count', data: datas, backgroundColor:bgColor, borderColor:borderColor, borderWidth: 1 }]
				}
			}); 
		}
		)
		
	}) 
	</script>

</head>
</body>
<body>
							<h3>Chart</h3>
						<div id ="chart"> 
							<canvas id="ctx"></canvas> 
						</div> 
		
	
	
</body>
</html>