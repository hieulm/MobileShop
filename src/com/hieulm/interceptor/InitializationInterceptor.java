package com.hieulm.interceptor;

import java.util.List;
import java.util.Map;

import com.hieulm.model.BO.Hangsx;
import com.hieulm.util.Category;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class InitializationInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8781414668434211506L;

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
		System.out.println("inside InitializationInterceptor");
		List<Hangsx> hangsxs = Category.getHangDienthoai();
		Map session = actionInvocation.getInvocationContext().getSession();
		session.put("hangsxs", hangsxs);
//		Action action = (Action) actionInvocation.getAction();
//		if (action instanceof GlobalVariableAware) {
//			((GlobalVariableAware) action).setHangsxs(hangsxs);
//		}
		return actionInvocation.invoke();
	}

}
