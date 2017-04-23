package com.jkxy.web.interceptor;

import java.util.Map;

import com.jkxy.web.model.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginCheck extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map session =  arg0.getInvocationContext().getSession();
		User user = (User)session.get("user");
		if(user==null){
			return "login";
		}
		return arg0.invoke();
	}

}
