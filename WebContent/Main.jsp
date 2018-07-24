<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="css/main.css" /> -->

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.container {
	width: 100%;
	height: 800px;
}

ul {
	list-style-type: none;
}

li {
	text-decoration: none;
	float: left;
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

.title {
	float: left;
	width: 100%;
	height: 100px;
	margin-left: 50px;
}

.list {
	display: inline-block;
	margin-left: 10px;
	width: 200px;
	height: 90px;
	float: left;
	border-right: 1px solid gainsboro;
	border-right-width: thin;
}

.list:nth-child(6) {
	width: 60px;
	height: 90px;
	float: none;
}

.list ul {
	list-style-type: none;
}

.list li {
	float: left;
	text-decoration: none;
	padding-left: 15px;
	padding-top: 10px;
	font-family: "宋体";
	font-size: 13px;
	position: relative;
}

.list li:nth-child(1) {
	font-family: "Microsoft YaHei";
	font-weight: 800px;
	font-size: 13px;
}

.list ul li:nth-child(6) {
	float: none;
}

.min-logo {
	position: relative;
	margin-top: 30px;
	float: left;
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

.navbar {
	width: 100%;
	height: 40px;
	background-color: #1f3b7b;
	float: left;
	position: relative;
	box-shadow: 1px 1px 1px solid #F5F5F5;
}

.navbar ul {
	list-style-type: none;
}

.navbar li {
	float: left;
	padding-left: 22px;
	color: white;
	font-weight: 500px;
	font-size: 17px;
	text-align: center;
	vertical-align: middle;
	margin-top: 15px;
	margin-left: 10px;
}

.navbar ul li:nth-child(4) {
	border-right: 1px solid gray;
	border-right-width: thin;
}

.navbar ul li:nth-child(8) {
	border-right: 1px solid gray;
	border-right-width: thin;
}

.navbar ul li:nth-child(12) {
	border-right: 1px solid gray;
	border-right-width: thin;
}

.navbar ul li:nth-child(16) {
	border-right: 1px solid gray;
	border-right-width: thin;
}

.navbar li:hover {
	color: brown;
	cursor: pointer;
}

.main-body {
	width: 100%;
	height: 420px;
	margin-top: 120px;
}

.main-body .box:nth-child(1) {
	margin: 0;
	padding: 0;
	float: left;
	width: 36%;
	height: 400px;
}

.main-body .box:nth-child(2) {
	margin: 0;
	padding: 0;
	float: left;
	width: 36%;
	height: 400px;
}

.main-body .box:nth-child(3) {
	margin: 0;
	padding: 0;
	float: left;
	width: 28%;
	height: 400px;
}

table {
	width: 100%;
	height: 40px;
	border-collapse: collapse;
}

table tr th {
	background-color: #F5F5F5;
	border: 1px solid gainsboro;
	border-top: 1px solid black;
	border-top-width: medium;
	text-align: center;
}

table tr th:hover {
	background-color: white;
	cursor: pointer;
}

.main-body .box img {
	margin-top: 10px;
	width: 100%;
	height: 300px;
}

.main-body-center {
	margin-left: 320px;
	text-align: center;
	position: relative;
}

.min-header {
	width: 100%;
	height: 40px;
	display: inline-block;
	float: left;
	border-top: 1px solid brown;
	border-top-width: medium;
	border-bottom: 1px solid #F5F5F5;
}

.min-header p:nth-child(1) {
	height: 40px;
	margin-left: 50px;
	color: brown;
	float: left;
	font-size: 18px;
	line-height: 40px;
	text-align: center;
}

.min-header p:nth-child(2) {
	height: 40px;
	float: right;
	font-size: 13px;
	line-height: 40px;
}

#new {
	width: 100%;
	margin-top: 10px;
	float: left;
	padding: 6px;
	text-align: center;
}

#new a {
	padding: 0;
	margin: 0;
	font-size: 18px;
	display: block;
}

#new a:hover {
	color: brown;
}

.right-header {
	width: 100%;
	height: 39px;
	border-top: 1px solid black;
	border-top-width: medium;
	border-bottom: 1px solid gainsboro;
}

.main-body-right .right-header a img {
	border-radius: 5px;
}

.main-body-right p.chiese {
	font-size: 20px;
	font-family: "宋体";
	text-align: center;
}

.right-header p:nth-child(1) {
	font-size: 18px;
	float: left;
	margin-left: 50px;
	line-height: 40px;
}

.right-header p:nth-child(2) {
	font-size: 14px;
	color: brown;
	float: right;
	line-height: 40px;
}

#newInfo {
	width: 100%;
	height: 200px;
	float: left;
}

#newInfo .img-info {
	padding: 10px;
}

.img-info img {
	text-align: center;
	vertical-align: middle;
}

.img-info img:hover {
	transform: scale(1.2);
}
</style>
</head>

<body>
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
		<div class="title">
			<div class="list">
				<ul>
					<li>新闻</li>
					<li>军事</li>
					<li>社会</li>
					<li>国际</li>
				</ul>
				<ul>
					<li>财经</li>
					<li>股票</li>
					<li>基金</li>
					<li>外汇</li>
				</ul>
				<ul>
					<li>科技</li>
					<li>手机</li>
					<li>探索</li>
					<li>众测</li>
				</ul>
			</div>
			<div class="list">
				<ul>
					<li>新闻</li>
					<li>军事</li>
					<li>社会</li>
					<li>国际</li>
				</ul>
				<ul>
					<li>财经</li>
					<li>股票</li>
					<li>基金</li>
					<li>外汇</li>
				</ul>
				<ul>
					<li>科技</li>
					<li>手机</li>
					<li>探索</li>
					<li>众测</li>
				</ul>
			</div>
			<div class="list">
				<ul>
					<li>新闻</li>
					<li>军事</li>
					<li>社会</li>
					<li>国际</li>
				</ul>
				<ul>
					<li>财经</li>
					<li>股票</li>
					<li>基金</li>
					<li>外汇</li>
				</ul>
				<ul>
					<li>科技</li>
					<li>手机</li>
					<li>探索</li>
					<li>众测</li>
				</ul>
			</div>
			<div class="list">
				<ul>
					<li>新闻</li>
					<li>军事</li>
					<li>社会</li>
					<li>国际</li>
				</ul>
				<ul>
					<li>财经</li>
					<li>股票</li>
					<li>基金</li>
					<li>外汇</li>
				</ul>
				<ul>
					<li>科技</li>
					<li>手机</li>
					<li>探索</li>
					<li>众测</li>
				</ul>
			</div>
			<div class="list">
				<ul>
					<li>新闻</li>
					<li>军事</li>
					<li>社会</li>
					<li>国际</li>
				</ul>
				<ul>
					<li>财经</li>
					<li>股票</li>
					<li>基金</li>
					<li>外汇</li>
				</ul>
				<ul>
					<li>科技</li>
					<li>手机</li>
					<li>探索</li>
					<li>众测</li>
				</ul>
			</div>
			<div class="list">
				<ul>
					<li>交易</li>
					<li>理财</li>
					<li>更多</li>
				</ul>
			</div>
		</div>
		<div class="logo">
			<img src="img/bg9.gif" width="100%" />
		</div>
		<div class="header">
			<div class="min-logo">
				<img src="img/news_logo.png" />
				<p>手机新浪网</p>
				<p>设为书签</p>
				<p>新浪新闻客户端</p>
			</div>
		</div>
		<div class="navbar">
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
		<div class="main-body">
			<div class="box main-body-left" id="main-body-left">
				<table>
					<tr>
						<th>热点</th>
						<th>聚焦</th>
						<th>天下</th>
						<th>现场</th>
						<th>军事</th>
					</tr>
				</table>
				<div class="scollImg">
					<img id="scollImg" />

				</div>

			</div>
			<div class="box main-body-center">
				<div class="min-header">
					<p>要闻</p>
					<p>北京时间：2017.07.06 周五</p>

				</div>
				<div class="new" id="new">
					<a href="#">红船精神</a><br /> <a href="#">新一届国务院班子成员首次集体公开亮相</a><br />
					<a href="#">特鲁多电话通知特朗普:加拿大向美“宣战”</a><br /> <a href="#">[美国四处挑起贸易战
						贸易伙伴反击:别无他法 特朗普后院起火]</a><br /> <a href="#">民革中央副主席冯巩再获新职</a><br /> <a
						href="#">法国4-3阿根廷晋级 葡萄牙1-2负乌拉圭出局</a><br /> <a href="#">[
						梅西C罗同天出局 绝望悲伤凝视 今生无缘比肩老马 淘汰赛0球 ]</a><br />
					<hr />
				</div>
			</div>
			<div class="box main-body-right">
				<div class="right-header">
					<p>图书推荐</p>
					<p>
						<span>TOP&nbsp;TALK</span> 猜你喜欢
					</p>
				</div>
				<a href="queryAllBooks.jsp"><img src="img/bk1.jpg" /></a>
				<p class="chiese">查看文学巨作</p>
			</div>
		</div>

		<div id="newInfo">
			<h3>83岁电影表演艺术家牛犇入党 有网友一语道破天机</h3>
			<div class="img-info" id="img-info"></div>
		</div>

	</div>

</body>

<script src="js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		//初始化调用		 				
		getInfo();
		getData();
	});

	function getInfo() {

		$.getJSON("queryAllInfo", function(data) {
			var list = data;
			$("#new").empty();
			$.each(list, function(index, item) {
				var html = '<a href="detailInfo.jsp?iId=' + item.iId + '">'
						+ item.iName + '</a><br/>';
				$("#new").append(html);
			});
		});

	}

/*	function getData() {

		//ajax请求数据库图片	
				$.getJSON("queryAllInfo",function(data) {
							var list = data;
							$("#img-info").empty();
							$.each(list,function(index, item) {
								var html = '<a href="detailInfo.jsp?iId='+ item.iId+ '"><img src="'+item.iImg+'" width="150px" height="100px"/>';
								$("#img-info").append(html);

							});
			});
	}*/
	
		function getData() {

		//ajax请求数据库图片	
				$.getJSON("queryAllTup",function(data) {
							var list = data;
							$("#img-info").empty();
							$.each(list,function(index, item) {
								var html = '<a href="detailTup.jsp?tId='+ item.tId+ '"><img src="'+item.tImg+'" width="150px" height="100px"/>';
								$("#img-info").append(html);

							});
			});
	}
</script>

<script type="text/javascript">
	var index = 0;
	var imgs = [ 'img/C_01.jpg', 'img/C_02.jpg', 'img/C_03.png', 'img/C_05.png' ];
	function lunbo() {
		index++;
		var scollImg = document.getElementById("scollImg");
		scollImg.src = imgs[index % 4];
	}

	setInterval("lunbo()", 1000); /*无限循环setInterval()方法*/
</script>

</html>