package com.jkxy.web.service;

import java.util.List;
import java.util.Set;

import com.jkxy.web.model.Consume;
import com.jkxy.web.model.Vip;


public interface VipService {
	public List<Vip> getVip(String vipName) throws Exception ;
	public void updataVip(Vip vip) ;
	public void delect(Integer vipId) ;
	public boolean addVip(Vip vip);
	public List<Vip> getAllVip() ;
	public Vip getVipById(Integer vipId);
}
