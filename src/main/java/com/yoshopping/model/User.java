package com.yoshopping.model;

/**
 * 用户信息
 */
/*
 * 注意：此实体类属性名与数据库表列名要一直
 * ，否则会出现查询后返回的对象为空的情况
 */
//此User实体类对应于user_login表，user_inf表
public class User {
    // 成员变量
	/*
	 * 对应于user_login表
	 */
    private Integer user_login_id;//user_login表主键，此处用的是integer
    private String user_login_name;//用户登录名(虚拟名称)
    private String user_login_password;//用户登录密码
    /*
     * 对应于user_inf表
     */
    private Integer user_inf_id;//user_inf表主键，此处用的是integer
    private String user_inf_name;//用户信息，真实姓名
    private int user_inf_identity_card_type;//用户信息，证件类型（身份证，学生证等）
    private String user_inf_identity_card_no;//用户信息，证件号码
    private String user_inf_phone;//用户信息，手机号码
    private String user_inf_email;//用户信息，邮箱
    private int user_inf_point;//用户信息，用户积分
    private int user_inf_money;//用户信息，余额
    private int user_inf_type;//用户信息，用户类型

    // 构造函数
    public User() {
        super();
    }

    public User(Integer user_login_id, String user_login_name, String user_login_password) {
        super();
        this.user_login_id = user_login_id;
        this.user_login_name = user_login_name;
        this.user_login_password = user_login_password;
    }
    
    @Override
    public String toString() {
        return "User [id=" + this.user_login_id + ", userName=" + this.user_login_name + ", password="
                + this.user_login_password + "]";
    }

    // 成员方法
    /*
     * 对应于user_login表
     */
	public Integer getUser_login_id() {
		return user_login_id;
	}

	public void setUser_login_id(Integer user_login_id) {
		this.user_login_id = user_login_id;
	}

	public String getUser_login_name() {
		return user_login_name;
	}

	public void setUser_login_name(String user_login_name) {
		this.user_login_name = user_login_name;
	}

	public String getUser_login_password() {
		return user_login_password;
	}

	public void setUser_login_password(String user_login_password) {
		this.user_login_password = user_login_password;
	}

	/*
	 * 对应于user_inf表
	 */
	public Integer getUser_inf_id() {
		return user_inf_id;
	}

	public void setUser_inf_id(Integer user_inf_id) {
		this.user_inf_id = user_inf_id;
	}

	public String getUser_inf_name() {
		return user_inf_name;
	}

	public void setUser_inf_name(String user_inf_name) {
		this.user_inf_name = user_inf_name;
	}

	public int getUser_inf_identity_card_type() {
		return user_inf_identity_card_type;
	}

	public void setUser_inf_identity_card_type(int user_inf_identity_card_type) {
		this.user_inf_identity_card_type = user_inf_identity_card_type;
	}

	public String getUser_inf_identity_card_no() {
		return user_inf_identity_card_no;
	}

	public void setUser_inf_identity_card_no(String user_inf_identity_card_no) {
		this.user_inf_identity_card_no = user_inf_identity_card_no;
	}

	public String getUser_inf_phone() {
		return user_inf_phone;
	}

	public void setUser_inf_phone(String user_inf_phone) {
		this.user_inf_phone = user_inf_phone;
	}

	public String getUser_inf_email() {
		return user_inf_email;
	}

	public void setUser_inf_email(String user_inf_email) {
		this.user_inf_email = user_inf_email;
	}

	public int getUser_inf_point() {
		return user_inf_point;
	}

	public void setUser_inf_point(int user_inf_point) {
		this.user_inf_point = user_inf_point;
	}

	public int getUser_inf_money() {
		return user_inf_money;
	}

	public void setUser_inf_money(int user_inf_money) {
		this.user_inf_money = user_inf_money;
	}

	public int getUser_inf_type() {
		return user_inf_type;
	}

	public void setUser_inf_type(int user_inf_type) {
		this.user_inf_type = user_inf_type;
	}
	
	
}
