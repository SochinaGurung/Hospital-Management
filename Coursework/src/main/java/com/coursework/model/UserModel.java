package com.coursework.model;

public class UserModel {
	public String user_id;
	public String password;
	public String role;
	

	public UserModel(String user_id, String password, String role) {
		super();
		this.user_id = user_id;
		this.password = password;
		this.role = role;
	}
	public UserModel() {}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	
}

