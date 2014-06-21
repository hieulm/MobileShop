package com.hieulm.action.admin;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.hieulm.model.BO.*;
import com.hieulm.model.DAO.*;

//hiển thị tất cả các hãng sản xuất điện thoại
public class BrandsAction extends ActionSupport {

	List<Hangsx> hangsxs;
	
	

	public List<Hangsx> getHangsxs() {
		return hangsxs;
	}



	public void setHangsxs(List<Hangsx> hangsxs) {
		this.hangsxs = hangsxs;
	}



	@Override
	public String execute() {
		HangsxDAO dao = new HangsxDAO();
		hangsxs = dao.listAllHangsx();
		return SUCCESS;
	}
}
