package com.jkxy.web.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.jkxy.web.dao.VipDao;
import com.jkxy.web.model.Vip;


public class VipDaoImpl implements VipDao{
	private SessionFactory sessionFactory;
	/**
	 * 名字查询
	 * @throws Exception
	 */
	@Override
	public List<Vip> getVip(String name) throws Exception{
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Vip.class);
		Criterion criterionOne = Restrictions.like("name", "%"+name+"%");
		criteria.add(criterionOne);
		List<Vip> listVip = criteria.list();
		if(listVip.size()>0){return listVip;}
		else{return null;}
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public VipDaoImpl() {
	}
	

	@Override
	public void updataVip(Vip vip) {
		sessionFactory.getCurrentSession().update(vip);
	}
	@Override
	public void delect(Integer vipId) {
		sessionFactory.getCurrentSession().delete(getVip(vipId));
	}
	@Override
	public Vip getVip(Integer vipId){
		Vip vip = (Vip)sessionFactory.getCurrentSession().get(Vip.class, vipId);
		return vip;
	}
	@Override
	public boolean addVip(Vip vip) {
		boolean play = true;
		List<Vip> vips = getAllVip();
		for(int i=0;i<vips.size();i++){
			Vip vip2 = vips.get(i);
			if(vip2.getName().equals(vip.getName())){
				play=false;
			}
		}
		if(play){
			sessionFactory.getCurrentSession().save(vip);
		}
		return play;
	}
	@Override
	public List<Vip> getAllVip() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Vip.class);
		List<Vip> vips = criteria.list();
		return vips;
	}

}
