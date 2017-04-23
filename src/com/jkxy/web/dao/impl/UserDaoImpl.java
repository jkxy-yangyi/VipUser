package com.jkxy.web.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

import com.jkxy.web.dao.UserDao;
import com.jkxy.web.model.User;


public class UserDaoImpl implements UserDao{
	private SessionFactory sessionFactory;
	public UserDaoImpl() {
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Override
	public String checkUser(String username, String password) {
		String check="false";
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
		List<User> users = criteria.list();
		for(int i=0;i<users.size();i++){
			User user = users.get(i);
			if(user.getUsername().equals(username)&&user.getPassword().equals(password)){
				check = user.getQuanxian();
			}
		}
		
		return check;
	}
}
