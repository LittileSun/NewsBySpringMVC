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
	        	width: 100%;
	        	height: auto;
	        	margin: 0;
	        	padding: 0;   
	        	background-color: #F5F5F5;
			}
			#center-img{
				margin-top: 50px;
				/*border-radius:10px solid red;*/
			}
			.header-img{
				margin-top: -40px;
				width: 100%;
				height: 120px;
				background-image: url(img/bg8.jpg);
				background-attachment: fixed;
				background-size: 100% 120px;
			}
			.page-header{
				font-size: 40px;
				font-weight: 800;
				margin-left: 80px;
				color: white;
				font-family: "楷体";
				line-height: 120px;
			} 
			.content{
				width: 1200px;
				height: 800px;
				border: 1px solid gray;
				margin-left: 80px;
				background-color: white;
				margin-top: 30px;
				position: relative;
			}
			.content p{
				margin-top: 50px;		
				font-family: "微软雅黑";
			}
			.left{
				position: absolute;
				float: left;
				position: relative;
				width: 700px;
				height: 600px;
				margin-left: 50px;
			}
			.right{
				float: right;
				margin-right: 20px;
				width: 400px;
				height: 380px;
				text-align: center;
			}
			#name{
				font-size: 30px;			
				font-weight: 800;
				padding: 2px;
				font-family: "楷体";
				display: inline-block;
				margin-left: -300px;
			}
			.message{
				font-size: 30px;				
			}
			#info{
				letter-spacing: 3px;
				font-family: "微软雅黑";
				font-weight: 500;
				font-size: 17px;
			}
            .bottom-img{
            	width: 250px;
            	height: 150px;
            	margin-top: 50px;
            	margin-left: 60px;
            	border:1px solid red;
            }
          .book{    
          	position: relative;       
            	font-size: 20px;
            	font-weight: 500;
            	font-family: "微软雅黑";
            	margin-left: 100px;
            	float: left;
            	margin-top: 20px;
            }
            .likePicture{
            	width: 100%;
            	height: 100px;
            	float: left;
         	    margin-top: -100px;
            	border-color: red;
            	margin-left: 80px;
            }
            .likePicture img:hover{
            	transform: scale(1.2);
            }
		</style>

		<!--判断如果是IE9以下，引入兼容h5标签的js文件，注意空格的位置-->
		<!--[if lt IE 9]>
		<script src="js/bootstrap/js/html5shiv.min.js"></script>
		<script src="js/bootstrap/js/respond.min.js"></script>		
		<![end if] -->
	</head>

	<body>
	<input type="hidden" id="bId" value="<%=request.getParameter("bId")%>">  <!--//从前面传过来的id-->
	
		
		<div class="container">
	        <div class="header-img">
			   <p class="page-header">查看书籍详情</p>
	        </div>
			<div class="content">
					<div id="name">小王子</div>	
				<div class="left">
					<p class="message">内容简介</p>
				   <p id="info">啊换个地方噶士大夫撒旦法师打发似的哈市地方噶是的发生的风格撒的发生的发生变更发货撒大哥的发挥公司的飞洒</p>
				</div>
				
				<div class="right">
			
						<div class="center-img" id="center-img">
					        center-img
				      </div>
				</div>	
				<!--<p class="book">一生必读的60本世界名著 用心感受名著的力量</p>-->
				<div class="likePicture" id="likePicture">
					
				</div>
				
			</div>		
						
            <div class="row" style="margin-top: 20px;">
				<!--<div class="col-sm-offset-8 col-sm-4">
					<input type="button" class="btn btn-success btn-block" data-toggle="modal" data-target="#avatar-modal" value="上传图片"/>
				</div>-->
				<div class="user_pic" style="margin: 10px;">
				<img src="">
			</div>

			<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<!--<form class="avatar-form" action="upload-logo.php" enctype="multipart/form-data" method="post">-->
						<form class="avatar-form">
							<div class="modal-header">
								<button class="close" data-dismiss="modal" type="button">&times;</button>
								<h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
							</div>
							<div class="modal-body">
								<div class="avatar-body">
									<div class="avatar-upload">
										<input class="avatar-src" name="avatar_src" type="hidden">
										<input class="avatar-data" name="avatar_data" type="hidden">
										<label for="avatarInput" style="line-height: 35px;">图片上传</label>
										<button class="btn btn-danger" type="button" style="height: 35px;" onClick="$('input[id=avatarInput]').click();">请选择图片</button>
										<span id="avatar-name"></span>
										<input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
									<div class="row">
										<div class="col-md-9">
											<div class="avatar-wrapper"></div>
										</div>
										<div class="col-md-3">
											<div class="avatar-preview preview-lg" id="imageHead"></div>
											<!--<div class="avatar-preview preview-md"></div>
						<div class="avatar-preview preview-sm"></div>-->
										</div>
									</div>
									<div class="row avatar-btns">
										<div class="col-md-4">
											<div class="btn-group">
												<button class="btn btn-danger fa fa-undo" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"> 向左旋转</button>
											</div>
											<div class="btn-group">
												<button class="btn  btn-danger fa fa-repeat" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"> 向右旋转</button>
											</div>
										</div>
										<div class="col-md-5" style="text-align: right;">
											<button class="btn btn-danger fa fa-arrows" data-method="setDragMode" data-option="move" type="button" title="移动">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
								</span>
							  </button>
											<button type="button" class="btn btn-danger fa fa-search-plus" data-method="zoom" data-option="0.1" title="放大图片">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
								  <!--<span class="fa fa-search-plus"></span>-->
								</span>
							  </button>
											<button type="button" class="btn btn-danger fa fa-search-minus" data-method="zoom" data-option="-0.1" title="缩小图片">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
								  <!--<span class="fa fa-search-minus"></span>-->
								</span>
							  </button>
											<button type="button" class="btn btn-danger fa fa-refresh" data-method="reset" title="重置图片">
									<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;reset&quot;)" aria-describedby="tooltip866214">
									</span>
							   </button>
										</div>
										<div class="col-md-3">
											<button class="btn btn-danger btn-block avatar-save fa fa-save" type="button" data-dismiss="modal"> 保存修改</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
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
						$.post("insertPic",{pContent:dataUrl,bId:$("#bId").val()},function(data){
							
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
			var bId = $("#bId").val();			
			$.getJSON("queryBooksById",{bId:bId},function(data){			
				var html = '<img src="'+data.bImg+'" width="400px" height="300px"/>';
				$("#center-img").html(html);
				$("#name").html(data.bName);				
				$("#info").html('&nbsp;&nbsp;&nbsp;&nbsp;'+data.bInfo);
				
			});
			
		});
		
		function getImgPiture(){
			
			//ajax请求数据库图片	
			$.getJSON("queryAllBooks",function(data){
				
				  var list = data;
				  $("#likePicture").empty();
				  $.each(list, function(index,item) {
				  	var html = '<a href="detailBooks.jsp?bId='+ item.bId+ '"><img src="'+item.bImg+'" width="150px" height="110px"/>';
				  $("#likePicture").append(html);
				  
				  });
			});
		}
		getImgPiture()
		
		
		function getImgData(){		
			
		$.getJSON("queryAllPic",{iId:$("#iId").val()},function(data){
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