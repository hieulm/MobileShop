package com.hieulm.interceptor;

import java.util.Map;

import com.hieulm.model.BO.Taikhoan;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AdminAuthenticationInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6530021337745215093L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("inside AdminAuthenticationInterceptor");
		Map<String, Object> sessionAttributes = actionInvocation
				.getInvocationContext().getSession();

		Taikhoan user = (Taikhoan) sessionAttributes.get("user");

		if (user == null) {
			System.out.println("ERROR 1 ");
			return Action.ERROR;
		}else if(!user.getRole().equals("admin")) {
			System.out.println("ERROR 2");
			return Action.ERROR;
		}		
		else {
			System.out.println("SUCCESS " + user.getRole());
			return actionInvocation.invoke();
		}
	}

}
