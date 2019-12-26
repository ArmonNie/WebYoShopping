/*
 * 整体的js事件
 */

//顶部导航栏的js行为定义
function nav_click(data){
	alert(data.id);
	//点击品牌名，定位到首页
	if(data.id == 'nav_brand'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = 'http://localhost:8080/WebYoShopping/';
	}
	//点击店铺管理，跳转到业务界面
	if(data.id == 'nav_shopmanage'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.location.href = 'NavController?pageTag=Main';
		//window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击商品管理，跳转到业务界面
	if(data.id == 'nav_goodsmanage'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击订单管理，跳转到业务界面
	if(data.id == 'nav_goodlistmanage'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
	//点击客户管理，跳转到业务界面
	if(data.id == 'nav_customermanage'){
		console.log("你点击目标id为" + data.id + ",重新定位中...");
		window.onload="/WebYoShopping/NavController?pageTag=Main";
	}
}

//侧边导航栏js行为定义
function left_nav_click(data){
	alert(data.id);
}