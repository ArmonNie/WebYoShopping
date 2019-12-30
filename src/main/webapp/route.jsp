<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>欢迎使用WebYoShpping</title>
	<!-- 注意：基本js应在应用行为js与页面行为js之前引入 -->
	<!-- 基本js（jquery）与css（bootstrap） -->
	<script src="static/base/jquery.js"></script>
	<script src="static/base/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="static/base/bootstrap/css/bootstrap.min.css">
	<!-- 本应用js -->
	<script src="static/js/app.js"></script>
	<!-- 本页面行为js -->
	<script src="static/js/route.js"></script>
</head>
<body>
	<!-- <form action="/WebYoShopping/LoginController?username=Armon" method="post">
		<label>账号：</label>
		<input type="text" id="txtUsername" name="username" placeholder="请输入账号" /><br/>
		<label>密码：</label>
		<input type="password" id="txtPassword" name="password" placeholder="请输入密码" /><br/>
		<input type="submit" value="提交" />
		<input type="reset" value="重置" />
	</form>  -->
	<div class="container">
		<!-- 导航栏起始 -->
		<div class="row">
			<div class="col-md-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span>
					 <span class="icon-bar"></span>
					 </button> <a id="nav_brand" class="navbar-brand" onclick="return nav_click(this)">YoShopping</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a id="nav_businessmanage" onclick="return nav_click(this)">业务管理</a>
						</li>
						<li>
							 <a id="nav_personalmessage" onclick="return nav_click(this)">个人信息</a>
						</li>
						<li>
							 <a id="nav_dataananyze" onclick="return nav_click(this)">数据统计</a>
						</li>
						<li>
							 <a id="nav_systemconfig" onclick="return nav_click(this)">系统设置</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" hint="请输入你要搜索的店铺，商品以及订单..."/>
						</div> 
						<button id="nav_btn_search" type="submit" class="btn btn-default" onclick="return nav_click(this)">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a id="nav_register" onclick="return nav_click(this)">注册</a>
						</li>
						<li>
							 <a id="nav_login" onclick="return nav_click(this)">登录</a>
						</li>
					</ul>
				</div>
			</nav>
			</div>
		</div>
		<!-- 导航栏结束 -->
		<!-- 主页内容部分开始 -->
		<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron">
				<h2>
					你好，欢迎来到服务提供方管理系统！
				</h2>
				<p>
					本系统主要为服务提供方提供对自己的经营业务进行管理的解决方案。通过
					本系统您可以对于自己的业务，个人信息，同时系统还会为您提供数据分析。
					希望您使用愉快，如果有任何问题，请及时联系XXX@XXX.com.
				</p>
				<p>
					 <a class="btn btn-primary btn-large" id="route_btn_startmanage" onclick="return route_click(this)">
					 	开始管理
					 </a>
				</p>
			</div>
			<div class="carousel slide" id="carousel-93564">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-93564">
					</li>
					<li data-slide-to="1" data-target="#carousel-93564">
					</li>
					<li data-slide-to="2" data-target="#carousel-93564">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/1/default.jpg" />
						<div class="carousel-caption">
							<h4>
								业务管理
							</h4>
							<p>
								帮助您愉快，效率的解决业务的管理问题~~
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/2/default.jpg" />
						<div class="carousel-caption">
							<h4>
								个性化管理
							</h4>
							<p>
								系统为您提供个性化设置，根据自己偏好改变页面显示风格吧~~
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/3/default.jpg" />
						<div class="carousel-caption">
							<h4>
								数据分析
							</h4>
							<p>
								本系统会通过专业的数据收集以及分析为您提供特定的大数据服务，为您的业务上升提供帮助~~
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-93564" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-93564" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://cdn.ibootstrap.cn/lorempixel.com/600/200/people/default.jpg" />
						<div class="caption">
							<h3>
								业务管理
							</h3>
							<p>
								本系统覆盖业务管理所有流程。通过本系统你可以方便的对于店铺虚拟门面，商品管理，订单管理等业务轻松一站式解决~~
							</p>
							<p>
								 <a class="btn btn-primary" id="route_btn_busnessmanage" onclick="return route_click(this)">
								 了解更多
								 </a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://cdn.ibootstrap.cn/lorempixel.com/600/200/city/default.jpg" />
						<div class="caption">
							<h3>
								信息管理
							</h3>
							<p>
								为了更方便为您提供优质搞笑的服务，希望你能给我们提供最真实的信息，我们保证不会写路您的个人信息~~
							</p>
							<p>
								 <a class="btn btn-primary" id="route_btn_messagemanage" onclick="return route_click(this)">
								 了解更多
								 </a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://cdn.ibootstrap.cn/lorempixel.com/600/200/sports/default.jpg" />
						<div class="caption">
							<h3>
								数据分析
							</h3>
							<p>
								数据分析，结合最新的行业行情以及最近您的经营数据，对前景进行预测，让您在避免亏损的道路上永远快人一步...
							</p>
							<p>
								 <a class="btn btn-primary" id="route_btn_dataananyze" onclick="return route_click(this)">
								 了解更多
								 </a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-5 column">
				<form class="form-horizontal" role="form">
						<div class="form-group">
							 <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="inputEmail3" />
							</div>
						</div>
						<div class="form-group">
							 <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									 <label><input type="checkbox" />Remember me</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 <button id="route_btn_login" onclick="return route_click(this)" type="submit" class="btn btn-default">登录</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-2 column">
				</div>
				<div class="col-md-5 column">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							 <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="inputEmail3" />
							</div>
						</div>
						<div class="form-group">
							 <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									 <label><input type="checkbox" />Remember me</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 <button id="route_btn_login" onclick="return route_click(this)" type="submit" class="btn btn-default">登录</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- 从此处上方添加正文内容 -->
		</div>
	</div>
	<!-- 主页内容部分结束 -->
	<hr/>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p class="text-center">
				 <em>京ICP备11008151号-6京公网安备11010802014853</em> 
				  <strong>
				 Linus Torvalds</strong> 
			</p>
		</div>
	</div>
	</div>
</body>
</html>
