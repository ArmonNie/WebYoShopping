package com.yoshopping.model;

/**
 * 用户信息
 */
/*
 * 注意：此实体类属性名与数据库表列名要一直
 * ，否则会出现查询后返回的对象为空的情况
 */
public class User {
    // 成员变量
    private Integer user_login_id;//此处用的是integer
    private String user_login_name;
    private String user_login_password;

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
}
