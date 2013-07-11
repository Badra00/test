package com.badra.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class LoginAction  extends ActionSupport implements SessionAware{
    /**
	 * 
	 */
	private static final long serialVersionUID = 8640209935298043866L;
	
	private String email;
	private String password;
	
	private SessionMap<String,Boolean> sessionMap;
 
    public String execute() {
    	//test BDD
    	if(email == null || password == null) {
    		return ERROR; 
    	}
        return SUCCESS;
    }
    
    public String logout() {
    	sessionMap.invalidate();
    	return SUCCESS;
    }
    
    @Override
	public void setSession(Map map) {
		sessionMap = (SessionMap) map;
		sessionMap.put("login", true);
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

	
}