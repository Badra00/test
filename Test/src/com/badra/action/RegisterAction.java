package com.badra.action;

import com.badra.bean.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4913484025191623120L;
	
	private String username;
	private String email;
	private String password;
	
	private User user;
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	public String execute() {
		return SUCCESS;
	}
	
	public String register() {
		user.setEmail(email);
		user.setPassword(password);
		user.setUsername(username);
		
		return SUCCESS;
		
	}

}
