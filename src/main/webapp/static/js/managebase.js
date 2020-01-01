/*
 *所有的前端事件 
 */

window.onload = pageinit;
//$(document).ready = pageinit;

//页面初始化方法，首页进来进入欢迎界面
function pageinit(){
	console.log("test");
	//$("#userauthbase_content").load("WEB-INF/page/userauth/login.html .form-horizontal");
	$("#managebase_content").load("static/page/businessmanage/goodsmanage.html .goodsmanage_content");
}
