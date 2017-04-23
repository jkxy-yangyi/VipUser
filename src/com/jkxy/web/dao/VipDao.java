package com.jkxy.web.dao;


import java.util.List;

import com.jkxy.web.model.Vip;


public interface VipDao {
	public List<Vip> getVip(String vipName) throws Exception;
	public Vip getVip(Integer vipId);
	public void updataVip(Vip vip);
	public void delect(Integer vipId);
	public boolean addVip(Vip vip);
	public List<Vip> getAllVip();

}
