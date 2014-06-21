package com.hieulm.action.admin;

import java.util.List;

import com.hieulm.model.BO.Taikhoan;
import com.hieulm.model.DAO.TaikhoanDAO;
import com.opensymphony.xwork2.ActionSupport;

// hiển thị toàn bộ user của hệ thống
public class AccountsAction extends ActionSupport{

	private List<Taikhoan> taikhoans;
	
	
	
	public List<Taikhoan> getTaikhoans() {
		return taikhoans;
	}



	public void setTaikhoans(List<Taikhoan> taikhoans) {
		this.taikhoans = taikhoans;
	}

	@Override
	public String execute(){
		taikhoans = null;
		taikhoans = new TaikhoanDAO().getAllTaikhoan();
		return SUCCESS;
	}
}
