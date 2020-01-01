<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>WebYoShopping</title>
	<!-- 基本js（jquery）与css（bootstrap） -->
	<script src="static/base/jquery.js"></script>
	<script src="static/base/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="static/base/bootstrap/css/bootstrap.min.css">
	<!-- 本应用js -->
	<script src="static/js/app.js"></script>
	<!-- 本页面行为js -->
	<script src="static/js/managebase.js"></script>
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
					 		<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
					 		<span class="icon-bar"></span>
					 		<span class="icon-bar"></span>
					 	</button> <a id="nav_brand" class="navbar-brand" onclick="return nav_click(this)">YoShopping</a>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active">
							 	<a id="nav_businessmanage" onclick="return nav_click(this)">
							 		业务管理
							 	</a>
							</li>
							<li>
							 	<a id="nav_personalmessage" onclick="return nav_click(this)">
							 		个人信息
							 	</a>
							</li>
							<li>
							 	<a id="nav_dataananyze" onclick="return nav_click(this)">
							 		数据统计
							 	</a>
							</li>
							<li>
							 	<a id="nav_systemconfig" onclick="return nav_click(this)">
							 		系统设置
							 	</a>
							</li>
						</ul>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" hint="请输入你要搜索的店铺，商品以及订单..."/>
							</div> 
							<button id="nav_btn_search" type="submit" class="btn btn-default" onclick="return nav_click(this)">
								搜索
							</button>
						</form>
						<ul class="nav navbar-nav navbar-right">
							<li>
							 	<a id="nav_register" onclick="return nav_click(this)">
							 		注册
							 	</a>
							</li>
							<li>
							 	<a id="nav_login" onclick="return nav_click(this)">
							 		登录
							 	</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- 导航栏结束 -->
		
		
		<div class="row clearfix">
			<!-- 侧边栏开始 -->
			<div class="col-md-2 column">
				<div class="panel-group" id="panel-49018">
					<div class="panel panel-default">
						<div class="panel-heading">
						 	<a id="panel-49018-goodsmanage" onclick="return left_nav_click(this)" class="panel-title" data-toggle="collapse" data-parent="#panel-49018" href="#panel-element-148138">
						 		商品管理
						 	</a>
						</div>
						<div id="panel-element-148138" class="panel-collapse collapse in">
							<div class="panel-body">
								商品入库
							</div>
							<div class="panel-body">
								商品上架
							</div>
							<div class="panel-body">
								商品下架
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
						 	<a id="panel-49018-messagemanage" onclick="return left_nav_click(this)" class="panel-title" data-toggle="collapse" data-parent="#panel-49018" href="#panel-element-130176">
						 		信息管理
						 	</a>
						</div>
						<div id="panel-element-130176" class="panel-collapse collapse">
							<div class="panel-body">
								商铺信息
							</div>
							<div class="panel-body">
								经济信息
							</div>
							<div class="panel-body">
								个人信息
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
						 	<a id="panel-49018-systemconfig" onclick="return left_nav_click(this)" class="panel-title" data-toggle="collapse"  data-parent="#panel-49018" href="#panel-element-130177">
								 系统设置
						 	</a>
						</div>
						<div id="panel-element-130177" class="panel-collapse collapse">
							<div class="panel-body">
								消息设置
							</div>
							<div class="panel-body">
								系统设置
							</div>
							<div class="panel-body">
								个性化定制
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 侧边栏结束 -->
			
			<!-- 本页面内容区域开始 -->
			<div id="managebase_content" class="col-md-6 column">
			
			</div>
			<!-- 本页面内容区域结束 -->
			
			<!-- 本页面未设计区域开始 -->
			<div class="col-md-4 column">
				<div class="alert alert-success alert-dismissable">
				 	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
					<h4>
						注意!
					</h4> 
					<strong>Warning!</strong> 
					Best check yo self, you're not looking too good. 
					<a href="#" class="alert-link">alert link</a>
				</div>
			</div>
			<!-- 本页面未设计区域开始 -->
		</div>
	</div>
</body>
</html>