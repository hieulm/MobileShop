package com.hieulm.action;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.BO.Hangsx;
import com.hieulm.model.DAO.DienthoaiDAO;
import com.opensymphony.xwork2.ActionSupport;

public class MobileDetailAction extends ActionSupport {

	private int masp;
	private Dienthoai dienthoai;
	
	public int getMasp() {
		return masp;
	}

	public void setMasp(int masp) {
		this.masp = masp;
	}

	
	
	public Dienthoai getDienthoai() {
		return dienthoai;
	}

	public void setDienthoai(Dienthoai dienthoai) {
		this.dienthoai = dienthoai;
	}


	
	@Override
	public String execute(){
		DienthoaiDAO dao = new DienthoaiDAO();
		dienthoai = dao.getDienthoaiById(masp);
		return SUCCESS;
	}
}
