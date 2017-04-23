package com.jkxy.web.service;

import com.jkxy.web.dao.UserDao;
import com.jkxy.web.service.impl.UserServiceImpl;


public class UserService implements UserServiceImpl {
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	@Override
	public String checkUser(String username, String password) {
		String think = userDao.checkUser(username, password);
		return think;
	}
	
}
