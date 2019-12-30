<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
	<!-- 基本js（jquery）与css（bootstrap） -->
	<script src="static/base/jquery.js"></script>
	<script src="static/base/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="static/base/bootstrap/css/bootstrap.min.css">
	<!-- 本应用js -->
	<script src="static/js/app.js"></script>
	<!-- 本页面行为js -->
	<!-- <script src="static/js/route.js"></script> -->
</head>
<body>
	<%-- <p>欢迎${pageTag}来到YoShopping~~</p> --%>
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
	<div class="row clearfix">
		<div class="col-md-2 column">
			<div class="panel-group" id="panel-49018">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-49018" href="#panel-element-148138">Collapsible Group Item #1</a>
					</div>
					<div id="panel-element-148138" class="panel-collapse collapse in">
						<div class="panel-body">
							Anim pariatur cliche...
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-49018" href="#panel-element-130176">Collapsible Group Item #2</a>
					</div>
					<div id="panel-element-130176" class="panel-collapse collapse">
						<div class="panel-body">
							Anim pariatur cliche...
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 column">
			<ul class="breadcrumb">
				<li>
					 <a href="#">Home</a>
				</li>
				<li>
					 <a href="#">Library</a>
				</li>
				<li class="active">
					Data
				</li>
			</ul>
			<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1">Email address</label><input type="email" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Password</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">File input</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						Example block-level help text here.
					</p>
				</div>
				<div class="checkbox">
					 <label><input type="checkbox" />Check me out</label>
				</div> <button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
		<div class="col-md-4 column">
			<div class="alert alert-success alert-dismissable">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					注意!
				</h4> <strong>Warning!</strong> Best check yo self, you're not looking too good. <a href="#" class="alert-link">alert link</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>