<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" type="text/css" href="js/datetimepicker/jquery.datetimepicker.css">
		<script src="head/bootstrap.min.js"></script>
		<script src="head/cropper.js"></script>
		<script src="head/sitelogo.js"></script>

		<style type="text/css">
			.container{
				margin: 0;
				padding: 0;
				width: 100%;
				height: auto;
				position: relative;
			}
			.top {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 50px;
	background-color: #F5F5F5;
	position: relative;
}

.font {
	color: black;
	float: left;
	margin-left: 50px;
	font-size: 13px;
	font-family: "微软雅黑";
	line-height: 50px;
}

.font:hover {
	color: brown;
}

.inputtext {
	float: right;
	margin-top: 10px;
}

.txt {
	width: 70px;
	height: 20px;
}

.text1 {
	width: 130px;
	height: 20px;
	margin-right: 0px;
}

.text2 {
	margin-right: 0px;
	padding-right: 0px;
}

.btn {
	width: 50px;
	height: 20px;
	background-color: cornflowerblue;
	color: white;
	line-height: 25px;
	text-align: center;
}
.header{
	margin: 0;
	padding: 0;
	float: left;
	width: 100%;
	height: 40px;
}
.min-logo {
	float: left;
	width: 100%;
	height: 40px;
	margin-top: -40px;
}

.min-logo p {
	float: right;
	margin-left: 150px;
	margin-top: 10px;
}

.min-logo p:nth-child(4) {
	color: brown;
}

.min-logo p:nth-child(3) {
	margin-left: 450px;
	color: gray;
}

.min-logo p:nth-child(2) {
	margin-left: 50px;
	color: gray;
}
			.content{
				position: absolute;
				margin-left: 100px;
				width: 800px;
				height: 600px;
				margin-top: 40px;
			}
			#name{
				padding: 2px;
				font-size: 30px;
				font-weight: 800;
				text-align: center;
				font-family: "楷体";
				display: inline-block;
				text-align: center;
			}
			.right{
				width: 800px;
				height: 400px;
				margin-top: 30px;
				border:1px solid green;
			}
			#info{
				font-size: 18px;
				letter-spacing: 2px;
				font-weight: 400;
				margin-top: 30px;
			}
			.content-right{
				float: right;
				margin-right: 80px;
				width: 300px;
				height: 280px;
				margin-top: 110px;		
				border: 1px solid #F5F5F5;
			}
			.content-right .pp{
				font-size: 17px;
				font-family: "微软雅黑";
			}
            .duoyu img{
            	float: left;
            }
            .duoyu p:nth-child(1){
            	color: gray;
            	font-size: 14px;
            }
            .duoyu p:nth-child(3){
            	margin-top: 50px;
            	font-size: 17px;
            	color: brown;
            }
			
/*			#birthday{
				display: inline-block;
			}*/
			.img-style{
				margin: 3px;
				width: 180px;
				height: 180px;
				transition: all 1s;
			}
			ul{
		        list-style-type: none;
	        }
			li{
				text-decoration: none;
				float: left;
				text-align: center;
				padding-left: 15px;
				font-size: 20px;
				margin-bottom: 10px;
				color: white;
			}
			.navbar{
				width: 100%;
				height: 40px;
				margin-top: 50px;
				background-color: #1f3b7b;
			}
			.navbar li {
				position: relative;
				float: left;			     
				color: white;
				font-weight: 500px;
				font-size: 17px;
				text-align: center;
				vertical-align: middle;
				margin-top: -30px;
				margin-left: 10px;
				}
			.navbar li:hover {
				color: brown;
				cursor: pointer;
			}
			.img-style:hover{
				transform: scale(1.5);
			}
			#myImg{
				margin: 0 100px;
				
			}
		</style>

		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->
	</head>

	<body>
	<input type="hidden" id="tId" value="<%=request.getParameter("tId")%>">
		<div class="container">
			<div class="top">
			<a href="#" class="font">新浪首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" class="font">七月起你的公积金可能有变化</a> &nbsp;&nbsp; <a href="#"
				class="font"> 加拿大今对美126亿美元商品征关税</a> &nbsp;&nbsp; <a href="#"
				class="font">高考查分方式</a>

			<div class="inputtext">
				<input type="text" class="txt text1" placeholder="易烊千玺救场"> <input
					type="text" class="txt text2" placeholder="新闻">
				<!-- <input type="button" class="btn" value="搜索">-->
				<button class="btn">搜索</button>
			</div>
		 </div>

		<img src="img/bg2.jpg" width="100%" height="60px"/>
		
     <div class="navbar">
     	<div class="header">
			<div class="min-logo">
				<img src="img/news_logo.png" />
				<p>手机新浪网</p>
				<p>设为书签</p>
				<p>新浪新闻客户端</p>
			</div>
		</div>
     	<ul>
				<li>滚动</li>
				<li>直播</li>
				<li>调查</li>
				<li>排行</li>
				<li>国内</li>
				<li>国际</li>
				<li>社会</li>
				<li>军事</li>
				<li>评论</li>
				<li>政务</li>
				<li>文化</li>
				<li>黑猫投诉</li>
				<li>图片</li>
				<li>视频</li>
				<li>体育</li>
				<li>娱乐</li>
				<li>财经</li>
				<li>科技</li>
				<li>专题</li>
     	</ul>
     </div>
			<div class="content">
					<div id="name">学霸六人全考上博士</div>			
					<div class="right" id="right">
					               图片 
				    </div>
					<p id="info">啊换个地方噶士大夫撒旦法师打发似的哈市地方噶是的发生的风格撒的发生的发生变更发货撒大哥的发挥公司的飞洒</p>
			</div>
			
			<div class="content-right">
				<p class="pp">一大波日用消费品关税降了 价格为何迟迟不动？</p>
				<div class="duoyu">
					<img src="img/new5.jpg" width="150px" height="150px"/>
					
					<p>
						一大波日用消费品关税降了 价格为何迟迟不动？
						一大波日用消费品关税降了 价格为何迟迟不动？
						一大波日用消费品关税降了 价格为何迟迟不动？
						一大波日用消费品关税降了 价格为何迟迟不动？
						一大波日用消费品关税降了 价格为何迟迟不动？[详情]
					</p>	
					<p>魔都科技中心</p>
					<img src="img/internet2.jpg" width="300px" height="200px"/>
				</div>
			<!--	<a href="#"><img src="img/new5.jpg" width="300px" height="450px"></a>-->
			</div>
  
			<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
			</div>
			<div  id="myImg">
					
				</div>
		</div>
	</body>
	<script src="js/jquery.js"></script>
		<!-- 引入全局js -->
		<script src="js/global.js"></script>
		<!--引入bootstrap的js功能-->
		<script src="js/bootstrap/js/bootstrap.js"></script>
		<!--引入layer插件-->
		<script src="js/layer/layer.js"></script>
		<!--引入日历js-->
		<script src="js/datetimepicker/jquery.datetimepicker.js"></script>
		<script src="head/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			//做个下简易的验证  大小 格式 
			$('#avatarInput').on('change', function(e) {
				var filemaxsize = 1024 * 5; //5M
				var target = $(e.target);
				var Size = target[0].files[0].size / 1024;
				if (Size > filemaxsize) {
					alert('图片过大，请重新选择!');
					$(".avatar-wrapper").childre().remove;
					return false;
				}
				if (!this.files[0].type.match(/image.*/)) {
					alert('请选择正确的图片!')
				} else {
					var filename = document.querySelector("#avatar-name");
					var texts = document.querySelector("#avatarInput").value;
					var teststr = texts; //你这里的路径写错了
					testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
					filename.innerHTML = testend;
				}

			});

			$(".avatar-save").on("click", function() {
				var img_lg = document.getElementById('imageHead');
				// 截图小的显示框内的内容
				html2canvas(img_lg, {
					allowTaint: true,
					taintTest: false,
					onrendered: function(canvas) {
						canvas.id = "mycanvas";
						//生成base64图片数据
						var dataUrl = canvas.toDataURL("image/jpeg");
						var newImg = document.createElement("img");
						newImg.src = dataUrl;
						imagesAjax(dataUrl);
						//发送请求上传图片的请求
						$.post("insertPic",{pContent:dataUrl,iId:$("#iId").val()},function(data){
							
							if(data=="yes"){
								alert("上传成功");
								getImgData();
							}
						});

					}
				});
			})

			function imagesAjax(src) {
				var data = {};
				data.img = src;
				data.jid = $('#jid').val();
				$.ajax({
					url: "upload-logo.php",
					data: data,
					type: "POST",
					dataType: 'json',
					success: function(re) {
						if (re.status == '1') {
							$('.user_pic img').attr('src', src);
						}
					}
				});
			}
		</script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		
		$(function(){
			var tId = $("#tId").val();			
			$.getJSON("queryTupById",{tId:tId},function(data){				
				var html = '<img src="'+data.tImg+'" width="800px" height="400px"/>';
				$("#right").html(html);
				$("#name").html(data.tName);
				$("#birthday").html(data.tBirthday);
				$("#info").html('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+data.tInfo);
				
			});
			
		});
		
		function getImgData(){
		
		$.getJSON("queryAllPic",{rId:$("#rId").val()},function(data){
			   var list = data;
			   $("#myImg").empty();
			  $.each(list, function(index,item) {
			  	var html='<img src="'+item.pContent+'" class="img-style"/>';
			  	$("#myImg").append(html);
			  });
		});
		}
		
		getImgData();
	</script>

</html>