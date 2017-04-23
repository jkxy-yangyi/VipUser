package com.jkxy.web.service;

import java.util.List;

import com.jkxy.web.model.Consume;


public interface ConsumeService {
	public List<Consume> getConsumeAll() ;
	public List<Consume> getConsumeById(Integer vipId);
}
