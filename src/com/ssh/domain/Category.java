package com.ssh.domain;

import java.io.Serializable;
import java.util.Set;

public class Category implements Serializable{
	
	private int cid;//新闻类型id
	private String categoryname;//类型名称
	private Set<News> news;//新闻
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public Set<News> getNews() {
		return news;
	}
	public void setNews(Set<News> news) {
		this.news = news;
	}
	
	
	
}
