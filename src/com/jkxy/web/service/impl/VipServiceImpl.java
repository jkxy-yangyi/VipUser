package com.jkxy.web.service.impl;

import java.util.List;
import java.util.Set;

import com.jkxy.web.dao.ConsumeDao;
import com.jkxy.web.dao.VipDao;
import com.jkxy.web.model.Consume;
import com.jkxy.web.model.Vip;
import com.jkxy.web.service.VipService;

public class VipServiceImpl implements VipService {
	private VipDao vipDao;
	private ConsumeDao consumeDao;
	
	public void setVipDao(VipDao vipDao) {
		this.vipDao = vipDao;
	}
	public VipDao getVipDao() {
		return vipDao;
	}
	
	public ConsumeDao getConsumeDao() {
		return consumeDao;
	}
	public void setConsumeDao(ConsumeDao consumeDao) {
		this.consumeDao = consumeDao;
	}
	@Override
	public List<Vip> getVip(String vipName) throws Exception {
		List<Vip> vips = vipDao.getVip(vipName);
		return vips;
	}
	
	@Override
	public void updataVip(Vip vip) {
		Vip vip2 = vipDao.getVip(vip.getVipId());
		vip2.setName(vip.getName());
		vip2.setAge(vip.getAge());
		vipDao.updataVip(vip2);
	}
	
	@Override
	public void delect(Integer vipId) {
		vipDao.delect(vipId);
	}
	
	@Override
	public boolean addVip(Vip vip) {
		boolean play = vipDao.addVip(vip);
		return play;
	}
	@Override
	public List<Vip> getAllVip() {
		List<Vip> vips = vipDao.getAllVip();
		return vips;
	}
	@Override
	public Vip getVipById(Integer vipId) {
		return vipDao.getVip(vipId);
	}
	
}
