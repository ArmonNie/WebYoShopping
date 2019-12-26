<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>欢迎使用WebYoShpping</title>
	<!-- 本应用js -->
	<script src="static/js/app.js"></script>
	<!-- 本页面行为js -->
	<script src="static/js/route.js"></script>
	<!-- 基本js（jquery）与css（bootstrap） -->
	<script src="static/base/jquery.js"></script>
	<script src="static/base/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="static/base/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<form action="/WebYoShopping/LoginController?username=Armon" method="post">
		<label>账号：</label>
		<input type="text" id="txtUsername" name="username" placeholder="请输入账号" /><br/>
		<label>密码：</label>
		<input type="password" id="txtPassword" name="password" placeholder="请输入密码" /><br/>
		<input type="submit" value="提交" />
		<input type="reset" value="重置" />
	</form> 
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
							 <a id="nav_shopmanage" onclick="return nav_click(this)">店铺管理</a>
						</li>
						<li>
							 <a id="nav_goodsmanage" onclick="return nav_click(this)">商品管理</a>
						</li>
						<li>
							 <a id="nav_goodlistmanage" onclick="return nav_click(this)">订单管理</a>
						</li>
						<li>
							 <a id="nav_customermanage" onclick="return nav_click(this)">客户管理</a>
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
				<h1>
					你好，欢迎来到电商服务方系统！
				</h1>
				<p>
					本系统主要为店铺老板提供对自己的店铺进行管理的解决方案。通过
					本系统您可以对于自己的店铺，商品，订单，以及客户进行一个完整的管理。
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
								商铺管理
							</h4>
							<p>
								帮助您愉快，效率的解决商铺的管理问题~~
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/2/default.jpg" />
						<div class="carousel-caption">
							<h4>
								商品管理
							</h4>
							<p>
								商品管理能够帮您快速录入并管理您商铺出售的商品。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/3/default.jpg" />
						<div class="carousel-caption">
							<h4>
								订单、客户管理
							</h4>
							<p>
								及时接收每一份订单，保证您不会遗漏任何一个赚钱的机会~~
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
								账户管理
							</h3>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
							<p>
								 <a class="btn btn-primary" id="route_btn_accoutmanage" onclick="return route_click(this)">Action</a> <a class="btn" href="#">Action</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://cdn.ibootstrap.cn/lorempixel.com/600/200/city/default.jpg" />
						<div class="caption">
							<h3>
								业务管理
							</h3>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
							<p>
								 <a class="btn btn-primary" id="route_btn_businessmanage" onclick="return route_click(this)">Action</a> <a class="btn" href="#">Action</a>
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
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
							<p>
								 <a class="btn btn-primary" id="route_btn_dataananyze" onclick="return route_click(this)">Action</a> <a class="btn" href="#">Action</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-2 column">
				</div>
				<div class="col-md-8 column">
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
