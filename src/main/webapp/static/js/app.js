/*
 * 整体的js事件
 */
/*
 * 发送的前端请求：
 * 1.直接后台执行数据处理，进行本标签页的网址重定向
 * 2.发送数据后，后台局部刷新前台页面
 */
//发送请求后执行页面跳转（1.本页面直接跳准  2.打开新的窗口）
function send_request_withoutresponse(data,url){
	xmlHttp = new XMLHttpRequest();
	xmlHttp.open("post",url);
	xmlHttp.setRequestHeader("Content-Type","application/json");
	xmlHttp.send();
	xmlHttp.onreadystatechange = function() {
		if(this.status==200){
			console.log("responseText",this.responseText)
		}
	};
}

//发送请求后，执行局部刷新
function send_ajaxrequest(data){
	
}


//顶部导航栏的js行为定义
function nav_click(data){
	alert(data.id);
	//点击品牌名，定位到首页
	if(data.id == 'nav_brand'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		//send_request_withoutresponse(data,"http://localhost:8080/WebYoShopping/NavController");
		window.location.href = 'http://localhost:8080/WebYoShopping/';
	}
	//点击业务管理，跳转到业务界面
	if(data.id == 'nav_businessmanage'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = '/WebYoShopping/NavController?pageTag=Main';
		//window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击个人信息，跳转到业务界面
	if(data.id == 'nav_personalmessage'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = '/WebYoShopping/NavController?pageTag=Main';
		//window.onload="http://localhost:8080/WebYoShopping/NavController?pageTag=Main";
	}
	//点击数据分析，跳转到业务界面
	if(data.id == 'nav_dataananyze'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = '/WebYoShopping/NavController?pageTag=Main';
		//window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击系统设置，跳转到业务界面
	if(data.id == 'nav_systemconfig'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = '/WebYoShopping/NavController?pageTag=Main';
		//window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击注册，跳转用户认证页面
	if(data.id == 'nav_register'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = '/WebYoShopping/NavController?pageTag=userauth';
		//window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击登陆，跳转用户认证页面
	if(data.id == 'nav_login'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = '/WebYoShopping/NavController?pageTag=userauth';
		//window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
}

//侧边导航栏js行为定义
function left_nav_click(data){
	alert(data.id);
}