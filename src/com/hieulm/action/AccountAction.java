package com.hieulm.action;

import java.util.Map;

import com.hieulm.model.BO.Hangsx;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AccountAction extends ActionSupport{
	

	@Override
	public String execute(){
		Map session = (Map) ActionContext.getContext().get("session");
		return SUCCESS;
	}
}	
