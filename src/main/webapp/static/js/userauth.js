/*
 *处理所有的请求 
 */
window.onload = pageinit;
//$(document).ready = pageinit;

function pageinit(){
	console.log("test");
	//$("#userauthbase_content").load("WEB-INF/page/userauth/login.html .form-horizontal");
	$("#userauthbase_content").load("static/page/userauth/login.html .form-horizontal");
}