<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<!--设置浏览器的布局视口，只在移动端浏览器起作用-->
		<meta name="viewport" content="width=width-device,initial-scale=1,user-scalable=no" />
		<title></title>
		<!--引入bootstrap的核心css-->
		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.css" />
		<!--引入日历css-->
		<link rel="stylesheet" href="js/datetimepicker/jquery.datetimepicker.css" />

		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->

		<style>
			.header {
				width: 100%;
				height: 50px;
				padding: 15px 40px;
				background-color: blue;
			}
			ul{
				list-style-type: none;
			}
			li{
				text-decoration: none;
				float: left;
				color: white;
			}
		</style>
	</head>

	<body>
		<div class="container">

			<div class="header">
				<ul>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
					<li>新闻</li>
				</ul>
			</div>
            
			<div class="left">
				<a href="NewPic_01.jsp?iId=' + item.iId + '"><img src="img/C_01.jpg" id="myImg"/></a>
			</div>
			<div class="center"></div>
			<div class="right"></div>

		</div>

		<!--引入jquery-->
		<script src="js/jquery.js"></script>
		<!-- 引入全局js -->
		<script src="js/global.js"></script>
		<!--引入请求参数插件js-->
		<script src="js/param.js"></script>
		<!--引入bootstrap的js功能-->
		<script src="js/bootstrap/js/bootstrap.js"></script>
		<!--引入layer插件-->
		<script src="js/layer/layer.js"></script>
		<!--引入日历js-->
		<script src="js/datetimepicker/jquery.datetimepicker.js"></script>

		<script>
			$(function() {
				//初始化调用
				getData();
				
			});
			
			//分页查询函数
			function getData() {

				$.getJSON('queryAllPic', function(data) {

					var list = data; //获得数据集合

					var html; //拼接html字符串

					var dataTable = $('#dataTable tbody');

					//清空原始内容
					dataTable.empty();

					//遍历数据集合
					$.each(list, function(index, item) {

						html = '<tr>';
						html += '	<td><img src="' + item.pContent + '"/></td>';                 				
						html += '</tr>';

						dataTable.append(html);
					});

				});
					
	   
		</script>
	</body>

</html>