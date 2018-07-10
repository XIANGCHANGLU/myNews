package com.ssh.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.opensymphony.xwork2.ActionContext;
import com.ssh.dao.UserDao;
import com.ssh.domain.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public List<User> login(String username, String password) {
		List<User> user=this.getHibernateTemplate().find("from User where userName=? and password=?",username,password);
		return user;
	}

	public boolean logout() {
		Map session = ActionContext.getContext().getSession();
		session.remove("listuser");
		return true;
	}

	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from User");
	}

	
	

}
