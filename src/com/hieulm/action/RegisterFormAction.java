package com.hieulm.action;

import java.util.Map;

import com.hieulm.model.BO.Hangsx;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterFormAction extends ActionSupport{

	public static final String ACCOUNT = "account";
	
	@Override
	public String execute(){
		
		Map session = (Map) ActionContext.getContext().get("session");
		
		if(session.containsKey("user")){
			System.out.println("user is already logged");
			return ACCOUNT;
		}
			
		
		return SUCCESS;
	}
}
