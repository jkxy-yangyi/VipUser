package com.jkxy.web.action;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.http.HttpRequest;

import com.jkxy.web.model.Consume;
import com.jkxy.web.model.Vip;
import com.jkxy.web.service.ConsumeService;
import com.jkxy.web.service.VipService;


public class VipAction {
	
	public List<Vip> getVips() {
		return vips;
	}

	public void setVips(List<Vip> vips) {
		this.vips = vips;
	}

	public Date getJoinTime() {
		return joinTime;
	}

	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}

	public String getVipName1() {
		return vipName1;
	}

	public void setVipName1(String vipName1) {
		this.vipName1 = vipName1;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	private String name;
	private VipService vipService;
	private ConsumeService consumeService;
	private Vip vip;
	private List<Vip> vips;
	private Date joinTime;
	private String vipName1;
	private int age;
	private String address;
	private int vipId;
	private List<Consume> consumes;
	public VipAction() {
	}
	public void setConsumerecords(List<Consume> consumes) {
		this.consumes = consumes;
	}
	public List<Consume> getConsumes() {
		return consumes;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	public void setVipService(VipService vipService) {
		this.vipService = vipService;
	}
	public VipService getVipService() {
		return vipService;
	}
	
	
	public void setVip(Vip vip) {
		this.vip = vip;
	}
	public Vip getVip() {
		return vip;
	}
	public void setVipId(int vipId) {
		this.vipId = vipId;
	}
	public int getVipId() {
		return vipId;
	}
	
	public ConsumeService getConsumeService() {
		return consumeService;
	}

	public void setConsumeService(ConsumeService consumeService) {
		this.consumeService = consumeService;
	}

	public void setConsumes(List<Consume> consumes) {
		this.consumes = consumes;
	}

	/**
	 * 名字查询
	 * @throws Exception
	 */
	public String getVipByName() throws Exception {
		List<Vip> vips = vipService.getVip(name);
		if(vips==null){
			HttpSession httpSession = ServletActionContext.getRequest().getSession();
			httpSession.setAttribute("message", "用户不存在");
			return "false";
		}
		else {
			vip = vips.get(0);
			return "success";
		}
	}
	
	/**
	 * 添加
	 * @throws Exception
	 */
	public String addVip() throws Exception {
		Vip addVip = new Vip(joinTime, name, age);
		boolean addStatus = vipService.addVip(addVip);
		if(addStatus){return "addSuccess";}
		else{return "addFalse";}
	}
	
	
	/**
	 * 删除
	 * @throws Exception
	 */
	public String delectVip() throws Exception {
		vipService.delect(vipId);
		return "delSuccess";
	}
	
	/**
	 * 更新
	 * @throws Exception
	 */
	public String updateVip() throws Exception {
		Vip vip = new Vip();
		vip.setVipId(vipId);
		vip.setAge(age);
		vip.setName(name);
		vipService.updataVip(vip);
		return "updateSuccess";
	}
	
	/**
	 * 查询所有
	 * @throws Exception
	 */
	public String getAllVip() throws Exception {
		vips = vipService.getAllVip();
		return "getAllSuccess";
	}
	
	/**
	 * 消费信息
	 * @throws Exception
	 */
	public String getConsume() throws Exception {
		Vip vip = vipService.getVipById(vipId);
		consumes = consumeService.getConsumeById(vip.getVipId());
		return "getConsume";
		
	}
}
