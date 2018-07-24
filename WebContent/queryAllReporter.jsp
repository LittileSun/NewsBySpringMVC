<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.css" />
		<!--引入日历css-->
		<link rel="stylesheet" href="js/datetimepicker/jquery.datetimepicker.css" />

<title>Insert title here</title>
</head>

	<body>
		<div class="container">

	<h2 class="page-header">记者列表</h2>

	<table class="table table-bordered table-striped" id="dataTable">
		<thead>
			<tr>
				<th>记者编号</th>
				<th>记者姓名</th>
				<th>记者头像</th>
				<th>记者生日</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>

	<div class="row" style="margin-top: 20px;">
		<div class="col-sm-offset-8 col-sm-4">
			<a href="insertReporter.jsp" class="btn btn-success btn-block">增加新用户</a>
		</div>
	</body>
	
	
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
				
				$.getJSON('queryAllReporter', function(data) {

					var list = data; //获得数据集合

					var html; //拼接html字符串

					var dataTable = $('#dataTable tbody');

					//清空原始内容
					dataTable.empty();

					//遍历数据集合
					$.each(list, function(index, item) {

						html = '<tr>';
						html += '	<td>' + item.rId + '</td>';
						html += '	<td>' + item.rName + '</td>';
						html += '	<td><img src="' + item.rImg + '" width="50" height="50" /></td>';
                        html += '	<td>' + item.rBirthday + '</td>';
						html += '	<td>';
						html += '		<input type="button"  value="删除" class="btn btn-danger btn-sm del-btn" onclick="deleteReporter('+item.rId+')" />';
                        html += '		<a class="btn btn-success btn-sm" href="information.jsp?rId=' + item.rId + '">详情</a>';
						html += '		<a class="btn btn-info btn-sm" href="updateReporter.jsp?rId=' + item.rId + '">修改</a>';
						html += '	</td>';
						html += '</tr>';

						dataTable.append(html);
					});

				});
			}
			function deleteReporter(rId){
				if(confirm("确认删除吗？")){
					//发请求
					$.get("deleteReporterById",{rId:rId},function(data){
						
						if(data=="yes"){
							alert("删除成功");
							getData();
						}
						
					});
					
				}
			}
		</script>
</html>