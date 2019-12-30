package com.yoshopping.model;
/*
 * 商品信息
 */
//对应于表
public class Product {
	//成员属性
	/*
	 * 对应product_info表
	 */
	private Integer product_id;//商品ID
	private String product_core;//商品编码
	private String product_name;//商品名称
	private String bar_code;//国条码
	private int brand_id;//品牌表的ID
	private int one_category_id;//一级分类ID
	private int two_category_id;//二级分类ID
	private int three_category_id;//三级分类ID
	private int supplier_id;//商品供应商ID
	private int price;//商品销售价格
	private int average_cost;//商品加权平均成本
	private int publish_status;//上下架状态
	private int audit_status;//审核状态
	private int weight;//商品重量
	private int length;//商品长度
	private int height;//商品高度
	private int width;//商品宽度
	private int color_type;//颜色种类
	private int production_date;//生产日期
	private int shelf_life;//商品有效期
	private String descript;//商品描述
	private int indate;//商品录入时间
	private int modified_time;//最后修改时间
	
	/*
	 * 对应product_category
	 */
	private int category_id;
	private String category_name;
	private String category_code;
	private int parent_id;
	private int category_level;
	private int category_status;
	private int categories_modified_time;
	

}
