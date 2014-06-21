package com.hieulm.action;

import java.util.List;

import com.hieulm.interceptor.GlobalVariableAware;
import com.hieulm.model.BO.Hangsx;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport implements GlobalVariableAware{
	
	private List<Hangsx> hangsxs;
	private String key1;
	
	@Override
	public String execute() throws Exception {
		System.out.println("inside IndexAction");
		return SUCCESS;
	}


	@Override
	public List<Hangsx> getHangsxs() {
		// TODO Auto-generated method stub
		return hangsxs;
	}


	@Override
	public void setHangsxs(List<Hangsx> hangsxs) {
		// TODO Auto-generated method stub
		this.hangsxs = hangsxs;
	}


	@Override
	public String getKey1() {
		// TODO Auto-generated method stub
		return key1;
	}


	@Override
	public void setKey1(String key1) {
		// TODO Auto-generated method stub
		this.key1 = key1;
	}
	
	
}
