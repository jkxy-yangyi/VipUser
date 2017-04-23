package com.jkxy.web.action;

import java.util.List;
import java.util.Set;

import com.jkxy.web.model.Consume;
import com.jkxy.web.service.ConsumeService;


public class ConsumeAction {
	private int consumeId;
	private ConsumeService consumeService;
	private List<Consume> consumes;
	
	public int getConsumeId() {
		return consumeId;
	}

	public void setConsumeId(int consumeId) {
		this.consumeId = consumeId;
	}

	public ConsumeService getConsumeService() {
		return consumeService;
	}

	public void setConsumeService(ConsumeService consumeService) {
		this.consumeService = consumeService;
	}

	public List<Consume> getConsumes() {
		return consumes;
	}

	public void setConsumes(List<Consume> consumes) {
		this.consumes = consumes;
	}

	public String getConsumeAll() throws Exception {
		 consumes = consumeService.getConsumeAll();
		return "allRecord";
	}

}
