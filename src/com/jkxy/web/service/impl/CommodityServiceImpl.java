package com.jkxy.web.service.impl;

import java.util.List;

import com.jkxy.web.dao.CommodityDao;
import com.jkxy.web.model.Commodity;
import com.jkxy.web.service.CommodityService;

public class CommodityServiceImpl implements CommodityService{
	private CommodityDao commodityDao;
	
	@Override
	public boolean addCommodity(Commodity commodity) {
		boolean think = commodityDao.addCommodity(commodity);
		return think;
	}

	@Override
	public List<Commodity> getCommodityAll() {
		List<Commodity> commodities = commodityDao.getCommodityAll();
		return commodities;
	}
	public void setCommodityDao(CommodityDao commodityDao) {
		this.commodityDao = commodityDao;
	}
	public CommodityDao getCommodityDao() {
		return commodityDao;
	}
}
