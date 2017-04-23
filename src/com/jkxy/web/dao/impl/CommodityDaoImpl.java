package com.jkxy.web.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

import com.jkxy.web.dao.CommodityDao;
import com.jkxy.web.model.Commodity;



public class CommodityDaoImpl    implements CommodityDao {
private SessionFactory sessionFactory;

	public CommodityDaoImpl() {

	}

	Logger logger = Logger.getLogger(CommodityDaoImpl.class);


	@Override
	public boolean addCommodity(Commodity commodity) {
	
		boolean think = false;
		List<Commodity> commodities = getCommodityAll();
		if(commodities!=null){Iterator<Commodity> iterator = commodities.iterator();
		while(iterator.hasNext()){
			Commodity getcommodity = iterator.next();
			if(getcommodity.getCommodityName().equals(commodity.getCommodityName())){
				 think = true;
			}
		}}
		
		
		if(think==false){sessionFactory.getCurrentSession().save(commodity);}
		return !think;
	}

	@Override
	public List<Commodity> getCommodityAll() {
		
		Criteria criteria =  sessionFactory.getCurrentSession().createCriteria(Commodity.class);
		List<Commodity> commodityList = criteria.list();
		if(commodityList.size()>0){
		logger.info("CommodityDao层日志信息"+commodityList.iterator().next().getCommodityName());
		return commodityList;}
		else {
			return null;
		}
	}
	
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
public SessionFactory getSessionFactory() {
	return sessionFactory;
}

}
