package com.hieulm.action;

import java.util.Map;

import com.hieulm.model.BO.Hangsx;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	
	public String execute(){
		
		Map session = (Map) ActionContext.getContext().get("session");
		// nếu tồn tại session.username thực hiện xóa và hiện trang index
		if(session.containsKey("username")){
			session.clear();
			return SUCCESS;
		}
		// nếu session.username không tồn tại hiện trang index
		else{
			session.clear();
			return ERROR;
		}
	}

}
