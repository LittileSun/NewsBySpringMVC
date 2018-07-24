<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<link href="css/owl.theme.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/cm-overlay.css" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="http://fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- menu -->
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/main.js"></script>
<!-- //menu --> 
<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		autoPlay:true,
		items : 3,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
<style>
	.banner{
		background: url(img/6.jpg);
	}
	.col-md-8 w3ls-banner-right{
		height: 441px;
	}
	
</style>
</head>
<body>
	<!-- banner -->
	<div class="banner" id="home">
		<input type="hidden" name="rId" id="rId" value="<%=request.getParameter("rId")%>"/>
		<div class="container">
			<div class="agile-logo">
				<h1><a href="#">Reporter<span>Information</span></a></h1>
			</div>
			<div class="w3l-banner-grids">
				<div class="col-md-8 w3ls-banner-right">
					<div id="header" class="header" style="height: 200px; width: 200px;">
						
					</div>
					<div class="banner-right-info">
						<h2>information:</h2>
						<p id="rInfo"></p>
					</div>
					<div class="clearfix"> </div>
					<div class="w3-button">
						<div class="w3-button-info m_nav_item">
							<a class="hvr-sweep-to-bottom" href="#contact">Contact Me</a>
						</div>
					</div>
					<div class="social-grids">
						<div class="social-info">
							<h4>Follow : </h4>
						</div>
						<div class="agileinfo-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
								<li><a href="#"><i class="fa fa-vk"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-banner-left">
					<div class="w3ls-banner-left-info">
						<h4>职业</h4>
						<p>Reporter</p>
					</div>
					<div class="w3ls-banner-left-info">
						<h4>姓名</h4>
						<p id="rName"></p>
					</div>
					<div class="w3ls-banner-left-info">
						<h4>生日</h4>
						<p id="rBirthday"></p>
					</div>
					<div class="w3ls-banner-left-info">
						<h4>住址</h4>
						<p>Eiusmod Tempor inclore Place,Kingsport 56777.</p>
					</div>
					<div class="w3ls-banner-left-info">
						<h4>Email Address</h4>
						<p><a href="mailto:example@email.com">mail@example.com</a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- about -->
	<div class="about" id="about">
		<div class="container">
			<div class="wthree-about-grids">
				<div class="col-md-6 wthree-about-left">
					<h3>About Me</h3>
					<h4>一个记者的职责</h4>
					<p>记者最主要的工作，就是代替广大的民众前往事情发生的现场，或是接触新闻事件的当事人，并将事情的真相及其代表的意义，透过报导呈现于大众媒体之上，协助媒体达成守望、教育、讨论、娱乐等功能。由于记者拥有阅听人赋予的权力，所以也被冠以“无冕王”的雅称。记者的职责这里主要谈三点：第一，敏锐地去发现事实；第二，忠实地去报道事实；第三，当好党和人民的耳目喉舌。  </p>
				</div >
				<div class="col-md-6 wthree-about-right">
					<h3>Skills</h3>
					<div class="skills-bar">
						<section class='bar'>
						  <section class='wrap'>
							<div class='wrap_right'>
							  <div class='bar_group'>
								<div class='bar_group__bar thin' label='好奇心' show_values='true' tooltip='true' value='543'></div>
								<div class='bar_group__bar thin' label='使命感' show_values='true' tooltip='true' value='535'></div>
								<div class='bar_group__bar thin' label='责任感' show_values='true' tooltip='true' value='675'></div>
								<div class='bar_group__bar thin' label='探索心' show_values='true' tooltip='true' value='456'></div>
								<div class='bar_group__bar thin' label='表达' show_values='true' tooltip='true' value='445'></div>
							  </div>
							</div>
							<div class='clear'></div>
						  </section>
						</section>
					</div>
				</div >
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- map -->
	<div class="map-grid">
		<iframe src="" class="map" style="border:0" allowfullscreen=""></iframe>
	</div>
	<!-- //map -->
	
	<!-- copyright -->
	<div class="agileits-w3layouts-footer">
		<div class="container">
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="记者信息">记者信息</a> - Collect from <a href="http://www.cssmoban.com/" title="大连民族大学" target="_blank">大连民族大学</a></p>
		</div>
	</div>
	<!-- //copyright -->
	<!--引入jquery-->
	<script src="js/jquery.js"></script>
	<!-- 引入全局js -->
	<script src="js/global.js"></script>
	<script src="js/bars.js"></script>
	<script src="js/owl.carousel.js"></script> 
	<script type="text/javascript">
	$(function() {

			var rId = $("#rId").val();
			
			$.getJSON("queryReporterById",{rId:rId},function(data){
				
				//alert(data.rId);
				//alert(data.rName);
				//alert(data.rBirthday);
				//alert(data.rInfo);
				//alert(data.rImg);
				
				var html = '<img src="'+data.rImg+'" class="header-img" data-toggle="modal" data-target="#avatar-modal"/>';
				$("#header").html(html);
				$("#rName").text(data.rName);
				$("#rBirthday").text(data.rBirthday);
				$("#rInfo").text(data.rInfo);
				$("#rId").text(data.rId);
			});
			
		});
		</script>
</body>	
</html>