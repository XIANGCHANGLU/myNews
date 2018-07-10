package com.ssh.service.impl;

import java.util.List;

import com.ssh.dao.UserDao;
import com.ssh.domain.User;
import com.ssh.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public List<User> login(String username, String password) {	
		return userDao.login(username, password);
	}
	public boolean logout() {
		// TODO Auto-generated method stub
		return userDao.logout();
	}
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return userDao.findAllUser();
	}
}
