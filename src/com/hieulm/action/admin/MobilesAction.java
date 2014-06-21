package com.hieulm.action.admin;

import java.util.List;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.DAO.DienthoaiDAO;
import com.opensymphony.xwork2.ActionSupport;


// hiển thị tất cả các điện thoại
public class MobilesAction extends ActionSupport{
	
	private List<Dienthoai> dienthoais;

	public List<Dienthoai> getDienthoais() {
		return dienthoais;
	}

	public void setDienthoais(List<Dienthoai> dienthoais) {
		this.dienthoais = dienthoais;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		DienthoaiDAO dao = new DienthoaiDAO();
		dienthoais = dao.getAllDienthoai();
		return SUCCESS;
	}

	
	

}
