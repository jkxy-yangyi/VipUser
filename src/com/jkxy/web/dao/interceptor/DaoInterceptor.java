package com.jkxy.web.dao.interceptor;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


public class DaoInterceptor {
	private SessionFactory sessionFactory;
	private Session session;
	private Transaction transaction;
	public void BeforeAdvice(){
		 session = sessionFactory.getCurrentSession();
		 transaction = session.beginTransaction();
	}
	public void AfterAdvice(){
		transaction.commit();
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public DaoInterceptor() {
		// TODO 自动生成的构造函数存根
	}
}
