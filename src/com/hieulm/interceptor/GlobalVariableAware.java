package com.hieulm.interceptor;

import java.util.List;

import com.hieulm.model.BO.Hangsx;

public interface GlobalVariableAware {

	
	public List<Hangsx> getHangsxs();
	public void setHangsxs(List<Hangsx> hangsxs);
	public String getKey1();
	public void setKey1(String key1);
}
