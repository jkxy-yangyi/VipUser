package com.jkxy.web.service;

import java.util.List;

import com.jkxy.web.model.Commodity;


public interface CommodityService {
	public boolean addCommodity(Commodity commodity);
	public List<Commodity> getCommodityAll() ;
}
