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
			.pagination {
				margin: 0!important;
			}
			.container{				 
	        	width: 100%;
	        	height: auto;
	        	margin: 0;
	        	padding: 0;   
			}
			.header-img{
				margin-top: -40px;
				width: 100%;
				height: 150px;
				background-image: url(img/bg8.jpg);
				background-attachment: fixed;
				background-size: 100% 150px;
			}
			.header-img p{
				color:white;
				font-size: 40px;
				font-weight: 800;
				line-height: 200px;
				font-family: "楷体";
				margin-left: 50px;
			}
			ul{
				list-style-type: none;
			}
			li{
				text-decoration: none;
			}
			.row{	
				text-align: center;
			    float: left;
		    }
		    .col-md-3{		   
			 	margin-left: 88px;
			 	margin-top: 20px;
			 	width: 250px;
			 	padding: 15px;
				border:1px solid gray;
				height: 400px;
				border-radius: 5px;
				box-shadow:1px 1px 1px gray,1px -1px 1px gray,-1px 1px 1px gray,-1px -1px 1px gray;
		   }
		   .info{
		   	margin-top: 20px;
		   }
		   #dataTable{
		   	margin-top: 50px;
		   }

		</style>
	</head>

	<body>
		<div class="container">
			
        <div class="header-img">
        	<p class="page-header">关于那些世界名著</p>
        </div>
        
	
	      <div id="dataTable"></div>
			
			<div class="row" style="margin-top: 20px;">
				<div class="col-sm-offset-8 col-sm-4">
					<a href="insertBooks.jsp" class="btn btn-success btn-block">发布书籍信息</a>
				</div>
			</div>

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

              //ajax请求数据
				$.getJSON('queryAllBooks', function(data) {

					var list = data; //获得数据集合

					var html; //拼接html字符串

					var dataTable = $('#dataTable');

					//清空原始内容
					dataTable.empty();       
							//遍历数据集合
							$.each(list, function(index, item) {
		                    html = " ";        /*清空之前的数据*/
						    html += '<div class="row">' ;
							html += '<div class="col-md-3">';
							html += '<p>序号&nbsp;&nbsp;&nbsp;&nbsp;'+ item.bId +'</p>';		
							html += '<p class="name">'+ item.bName +'</p>';	
							html += '<img src="' + item.bImg + '" width="150" height="150" />';	
							html += '<p class="info">' + item.bInfo.substr(0,50) + '.....</p>';
							html += '<input type="button"  value="删除" class="btn btn-danger btn-sm del-btn" onclick="deleteBooks('+item.bId+')" />';
		                    html += '<a class="btn btn-success btn-sm" href="detailBooks.jsp?bId=' + item.bId + '">详情</a>';
						    html += '<a class="btn btn-info btn-sm" href="updateBooks.jsp?bId=' + item.bId + '">修改</a>';
							html += '</div>';						  				     
					  										                                         					
					dataTable.append(html);
					});

				});
			}
			function deleteBooks(bId){
				if(confirm("确认删除吗？")){
					//发请求
					$.get("deleteBooksById",{bId:bId},function(data){
						if(data=="yes"){							
							getData();
						}
						
					});
					
				}
			}
		</script>
	</body>

</html>