package com.jkxy.web.action;

import java.util.List;

import com.jkxy.web.model.Commodity;
import com.jkxy.web.service.CommodityService;


public class CommodityAction {
	private Double price;
	private Integer number;
	private	String commodityName;
	private	Double agio;
	private List<Commodity> commodities;
	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public Double getAgio() {
		return agio;
	}
	public void setAgio(Double agio) {
		this.agio = agio;
	}
	public void setCommodities(List<Commodity> commodities) {
		this.commodities = commodities;
	}
	public List<Commodity> getCommodities() {
		return commodities;
	}


	private CommodityService commodityService;

	public void setCommodityService(CommodityService commodityService) {
		this.commodityService = commodityService;
	}
	public CommodityService getCommodityService() {
		return commodityService;
	}

	/**
	 *  商品信息录入
	 * @throws Exception
	 */
	public String addCommodity() throws Exception {
		Commodity commodity = new Commodity(commodityName,price, agio);
		boolean addStatus  =  commodityService.addCommodity(commodity);
		if(addStatus){return "success";}
		else{return "false";}	
	}
	
	/**
	 *  获取所有商品信息
	 * @throws Exception
	 */
	public String getAllCommodity() throws Exception {
	    commodities  =  commodityService.getCommodityAll();
		return "yes";	
	}
	

	
	
}
