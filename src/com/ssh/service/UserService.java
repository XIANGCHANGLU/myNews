package com.ssh.service;

import java.util.List;

import com.ssh.domain.User;

public interface UserService {
	public List<User> login(String username,String password);
	public boolean logout();
	public List<User> findAllUser();
}
