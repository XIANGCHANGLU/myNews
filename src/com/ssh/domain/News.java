package com.ssh.domain;

import java.io.Serializable;
import java.util.Date;

public class News implements Serializable{
	
	private int nid;//����ID
	private String head;//ͷ��
	private String content;//��������
	private Date publish_time;//����ʱ��
	private User user;//�����û�
	private Category category;//��������
	
	
	public News(){
		
	}
	
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public Date getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(Date publish_time) {
		this.publish_time = publish_time;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
