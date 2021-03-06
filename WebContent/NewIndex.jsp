<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	body{
		padding: 0;
		margin: 0;
	}
	ul{
		list-style-type: none;
	}
	li{
		text-decoration: none;
		float: left;
		text-align: center;
		padding: 20px 40px;
	}
	.navbar{
		width: 100%;
		height: 50px;
		background-color: blue;
	}
	.top{
		width: 100%;
		height: 60px;
		text-align: center;
	}
	.title{
		color: black;
		font-size: 30px;
		font-weight: 800;
		display: inline-block;
		height: 60px;
		line-height: 60px;	
	}
	.user-div{
	    width: 200px;
	    height: 60px;
	    float: right;
	}
	.img-style{
		margin-top: 10px;
		border-radius: 50%;
		float: right;
		margin-right: 100px;
	}
	.name{
		height: 60px;
		color: orangered;
		line-height: 60px;
		display: inline-block;
		float: left;
		font-size: 20px;
	}
	.content{
		width: 1200px;
		height: 800px;
		margin:0 auto;
	}
	.box{
		width: 228px;
		height: 350px;	
		float: left;
		margin-left: 10px;
	}
	.box-name,.box-num{
		color: black;
		float: left;
		margin-left: 5px;
		margin-right: 5px;
		font-size: 20px;
	}
	
	.box-content{
		width: 228px;
		font-family: "微软雅黑";
		height: 50px;
		line-height: 50px;
		font-weight: 500px;
		text-align: center;
	}
	.box-img{
		margin-top: 10px;
		margin-right: 20px;
		border-radius: 10px;
	}
	.box-header{
		border-radius: 10px;
	}
	.content{
		margin-top: 10px;
	}

</style>
</head>
<body>
     <div class="top">
     	<a class="title">新浪新闻首页</a>
     	<div class="user-div">
     		<div class="name">
     			${u.uName} 
     		</div>
     		<img class="box-header" src="${u.uHeader}" class="img-style" width="50" height="50"/>
     	</div>
     </div>
     
     <div class="navbar">
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
     
     <div class="content" id="content">
   <!--  	<div class="box">
     	    <div id="img">
     	    	<img class="box-img" src="img/u=3998444156,807774090&fm=11&gp=0.jpg" width="250" height="300"/>
     	    </div>	
     	    <div class="box-content">
     	    	<div class="box-name">孟美岐</div>
     	    	<div class="box-num">23654219</div>
     	    	<img src="xin.jpg" width="30" height="30"/>
     	    </div>
     	</div>-->

     	
     </div>
     
     <script src="js/jquery.js"></script>
     <script type="text/javascript">
     	//ajax请求
     	function getData(){
     		//发请求
     		$.getJSON("queryAllInfo",function(data){
     			$("#content").empty();
     			//遍历
     			$.each(data, function(index,item) {
     			var html = '<div class="box">';
	
		     	 html += '<div id="img">';
		     	 html += '<a href="detailInfo.jsp?iId=' + item.iId + '"><img class="box-img" src="'+item.iImg+'" width="250" height="300"/></a>';
		     	 html += '</div>';   
		     	 html += '<div class="box-content">';
		     	 html += '<div class="box-num">'+item.iName+'</div>';  
     	         html += '</div>' ;  
            	 html += '</div>';
            	 $("#content").append(html);
     			});
     			
     		});
     	}
     	getData();
     	
     </script>
</body>
</html>