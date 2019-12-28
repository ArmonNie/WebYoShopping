<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- 注意：基本js应在应用行为js与页面行为js之前引入 -->
	<!-- 基本js（jquery）与css（bootstrap） -->
	<script src="static/base/jquery.js"></script>
	<script src="static/base/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="static/base/bootstrap/css/bootstrap.min.css">
	<!-- 本应用js -->
	<script src="static/js/app.js"></script>
	<!-- 本y页面js -->
	<script src="static/js/userauth.js"></script>
<title>用户认证页面</title>
</head>
<body>
<div class="container">
			<!-- 导航栏起始 -->
			<div class="row clearfix">
				<div class="col-md-12">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
					 	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 		<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span>
					 		<span class="icon-bar"></span>
					 	</button> 
					 	<a id="nav_brand" class="navbar-brand" onclick="return nav_click(this)">
					 		YoShopping
					 	</a>
					</div>
				
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
				</div>
				<div id="userauthbase_content" class="col-md-8 column">
					
				</div>
				<div class="col-md-2 column">
				</div>
			</div>
		</div>
</body>
</html>