package com.jkxy.web.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.jkxy.web.dao.ConsumeDao;
import com.jkxy.web.model.Consume;


public class ConsumeDaoImpl implements ConsumeDao{
	private SessionFactory sessionFactory;
	public ConsumeDaoImpl() {
	}
	@Override
	public List<Consume> getConsumeAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Consume.class);
		List<Consume> consumes = criteria.list();
		return consumes;
	}
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Override
	public Consume getConsume(Integer consumeId) {
		Criteria criteria =sessionFactory.getCurrentSession().createCriteria(Consume.class);
		Criterion criterion = Restrictions.eq("consumeId", consumeId);
		criteria.add(criterion);
		Consume consumerecord =(Consume) criteria.list().iterator().next();
		return consumerecord;
	}
	@Override
	public List<Consume> getConsumeById(Integer vipId) {
		Criteria criteria =sessionFactory.getCurrentSession().createCriteria(Consume.class);
		Criterion criterion = Restrictions.eq("vipid", vipId);
		criteria.add(criterion);
		List<Consume> consumes = criteria.list();
		return consumes;
	}
	
}
