package com.jkxy.web.dao;

import java.util.List;

import com.jkxy.web.model.Consume;


public interface ConsumeDao {
	public List<Consume> getConsumeAll();
	public List<Consume> getConsumeById(Integer vipId);
	public Consume getConsume(Integer consumeId);
}
