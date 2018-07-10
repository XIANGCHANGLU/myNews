package com.ssh.domain;

import java.io.Serializable;
import java.util.Set;

public class User implements Serializable{
	
	private int uid;//�û�ID
	private String sex;//�û��Ա�
	private String phone;//�û��绰
	private String username;//�û���
	private String password;//����
	private Set<News> news;//����
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
