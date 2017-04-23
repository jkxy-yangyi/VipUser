package com.jkxy.web.service.impl;

import java.util.List;
import java.util.Set;

import com.jkxy.web.dao.ConsumeDao;
import com.jkxy.web.model.Consume;
import com.jkxy.web.service.ConsumeService;


public class ConsumeServiceImpl implements ConsumeService{
	private ConsumeDao consumeDao;
	public void setConsumeDao(ConsumeDao consumeDao) {
		this.consumeDao = consumeDao;
	}
	@Override
	public List<Consume> getConsumeAll() {
		List<Consume> consumes = consumeDao.getConsumeAll();
		return consumes;
	}
	public void setConsumerecordDao(ConsumeDao consumeDao) {
		this.consumeDao = consumeDao;
	}
	public ConsumeDao getConsumeDao() {
		return consumeDao;
	}
	
	@Override
	public List<Consume> getConsumeById(Integer vipId) {
		List<Consume> consumes = consumeDao.getConsumeById(vipId);
		return consumes;
	}

}
