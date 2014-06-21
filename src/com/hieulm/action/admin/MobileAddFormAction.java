package com.hieulm.action.admin;

import java.util.List;

import com.hieulm.model.BO.Hangsx;
import com.hieulm.model.BO.Hedieuhanh;
import com.hieulm.model.DAO.HangsxDAO;
import com.hieulm.model.DAO.HedieuhanhDAO;
import com.opensymphony.xwork2.ActionSupport;

public class MobileAddFormAction extends ActionSupport {
	
	private List<Hangsx> hangsxs;
	private List<Hedieuhanh> oss;
	
	

	public List<Hedieuhanh> getOss() {
		return oss;
	}



	public void setOss(List<Hedieuhanh> oss) {
		this.oss = oss;
	}



	public List<Hangsx> getHangsxs() {
		return hangsxs;
	}



	public void setHangsxs(List<Hangsx> hangsxs) {
		this.hangsxs = hangsxs;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HangsxDAO dao1 = new HangsxDAO();
		hangsxs = dao1.listAllHangsx();
		HedieuhanhDAO dao2 = new HedieuhanhDAO();
		oss = dao2.listAllHedieuhanh();
		return SUCCESS;
	}

}
