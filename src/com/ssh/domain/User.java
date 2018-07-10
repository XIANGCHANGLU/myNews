package com.ssh.domain;

import java.io.Serializable;
import java.util.Set;

public class User implements Serializable{
	
	private int uid;//用户ID
	private String sex;//用户性别
	private String phone;//用户电话
	private String username;//用户名
	private String password;//密码
	private Set<News> news;//新闻
	public int getUid() {
		return uid;
	}
	public Set<News> getNews() {
		return news;
	}
	public void setNews(Set<News> news) {
		this.news = news;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	
	
}
