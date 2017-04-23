package com.jkxy.web.action;


import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jkxy.web.model.User;
import com.jkxy.web.service.impl.UserServiceImpl;

public class LoginAction{
	private UserServiceImpl userService;
	private String username;
	private String password;
	public String checkUser() throws Exception {
		String check = userService.checkUser(username, password);
		if(check.equals("系统管理员")){
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setQuanxian(check);
			HttpSession httpSession = ServletActionContext.getRequest().getSession();
			httpSession.setAttribute("user", user);
			return "xitong";
		}
		if(check.equals("普通管理员")){
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setQuanxian(check);
			HttpSession httpSession = ServletActionContext.getRequest().getSession();
			httpSession.setAttribute("user", user);
			return "putong";
		}
		HttpSession httpSession = ServletActionContext.getRequest().getSession();
		httpSession.setAttribute("message", "用户不存在");
		return "error";
	}
	public String quit() throws Exception {
		HttpSession httpSession = ServletActionContext.getRequest().getSession();
		User user = (User)httpSession.getAttribute("user");
		if(user!=null){
			httpSession.removeAttribute("user");
			return "success";
		}
		return "success";
	}
	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	public UserServiceImpl getUserService() {
		return userService;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
}
