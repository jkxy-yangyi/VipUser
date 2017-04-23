package com.jkxy.web.model;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {


	private String username;
	private String password;
	private String quanxian;


	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String password, String quanxian) {
		this.password = password;
		this.quanxian = quanxian;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuanxian() {
		return this.quanxian;
	}

	public void setQuanxian(String quanxian) {
		this.quanxian = quanxian;
	}

}