package com.ssh.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.User;
import com.ssh.service.UserService;


public class UserAction extends ActionSupport{
	
	private UserService userService;
	private String username;//”√ªß√˚
	private String password;//√‹¬Î
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String login(){
		
		Map session =ActionContext.getContext().getSession();
		
		List<User> listuser = this.userService.login(username, password);
		
		if (listuser.size()>0) {
			session.put("listuser", listuser);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public String logout(){
		Boolean flag = this.userService.logout();
		if (flag) {
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public String findAllUser(){
		Map session =ActionContext.getContext().getSession();
		List<User> allUser = this.userService.findAllUser();
		if (allUser.size()>0) {
			session.put("allUser", allUser);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
}
