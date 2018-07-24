<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<!--设置浏览器的布局视口，只在移动端浏览器起作用-->
		<meta name="viewport" content="width=width-device,initial-scale=1,user-scalable=no" />
		<title></title>
		<script src="head/jquery.min.js"></script>

		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link href="head/cropper.min.css" rel="stylesheet">
		<link href="head/sitelogo.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

		<script src="head/bootstrap.min.js"></script>
		<script src="head/cropper.js"></script>
		<script src="head/sitelogo.js"></script>

		<style type="text/css">
			.avatar-btns button {
				height: 35px;
			}
			.header-img{
				border-radius: 50%;
			}
			  .container{
		    	width: 100%;
		    	height: 800px;
		    	background-image: url(img/bg5.jpg);
		    	background-size: cover;
		    	background-attachment: fixed;
		    }
		    h2{
		    	display: block;
		    	color: white;
		    	margin-left: 200px;
		    }
			.body-form{
				width: 600px;
				height: 350px;
				background:rgba(255,255,255,0.2);
				margin-left: 360px;
				border-radius: 5px;		
				position: relative;
				text-align: center;
			}
		    form{
		    	padding-top: 100px;
		    }
		    form input{
		    	text-align: center;			    	    
		    }
		</style>

		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->
	</head>

	<body>
		 <input id="uuId" type="hidden" value="<%=request.getParameter("uId") %>" />
		<div class="container">

			<h2 class="page-header">修改密码</h2>
	<!--	    <center>
				<div class="header" id="header">
				        <img src="${user.uHeader}" class="header-img" data-toggle="modal" data-target="#avatar-modal"/>
				</div>
			</center>-->
			<div class="user_pic" style="margin: 10px;">
				<img src="">
			</div>


			<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
			<div class="body-form">	
			<form id="form1" class="form-horizontal" action="updateUserWpd" method="post">
				<input type="hidden" name="uId" id="uId" value=" "/>   <!--  传入id的值-->
				<input type="hidden" name="uHeader" id="uHeader" />
				<div class="form-group">
					<label for="" class="col-md-2">初始密码</label>
					<div class="col-md-10">
						<input id="uPwd" name="uPwd" type="text" placeholder="请输入初始密码" class="form-control" value=" "/>
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="col-md-2">确认密码</label>
					<div class="col-md-10">
						<input id="uPwd2" name="uPwd2" type="text" placeholder="请再次输入密码" class="form-control" onchange="checkPwd()" value=""/>
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-md-10 col-md-offset-2">
						<input type="submit" value="修改" class="btn btn-success" id="addBtn" />
						<input type="button" value="取消" class="btn btn-danger" onclick="history.back();" />
					</div>
				</div>
			</form>
			</div>
		</div>

		<!--引入jquery-->
		<script type="text/javascript" src="js/jquery.js"></script>
		<!-- 引入全局js -->
		<script src="js/global.js"></script>
     
	
	     <script type="text/javascript">
	     	
	     	//ajax请求页面信息
	     	$(function(){
	     		
	     		var uuId = $("#uuId").val();	    
	     		$.getJSON("queryUserById2",{uId:uuId},function(data){	 
	     			
	     			$("#uPwd").val(data.uPwd);	 	     		
	     			$("#uId").val(data.uId);
	     			
	     		});
	     	});
	     	
	     </script>


		<script type="text/javascript">
          

			function checkPwd() {
				var uPwd = $("#uPwd").val();
				var uPwd2 = $("#uPwd2").val();
				if (uPwd != uPwd2) {
					alert("两次密码不一致");
					$("#uPwd").val("");
					$("#uPwd2").val("");
				}else{
					alert("修改成功");
				}
			}
		</script>

	</body>

</html>