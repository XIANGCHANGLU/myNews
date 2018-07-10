package com.ssh.dao;

import java.util.List;

import com.ssh.domain.User;



public interface UserDao {
	
	public List<User> login(String username,String userpassword);
	
	public boolean logout();
	
	public List<User> findAllUser();
}
