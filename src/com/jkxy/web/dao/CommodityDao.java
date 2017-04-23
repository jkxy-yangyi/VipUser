package com.jkxy.web.dao;

import java.util.List;

import com.jkxy.web.model.Commodity;


public interface CommodityDao {
	public boolean addCommodity(Commodity commodity);
	public List<Commodity> getCommodityAll();
}
