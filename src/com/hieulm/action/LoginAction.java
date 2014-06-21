package com.hieulm.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.hieulm.model.BO.Hangsx;
import com.hieulm.model.BO.Taikhoan;
import com.hieulm.model.DAO.TaikhoanDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

public class LoginAction extends ActionSupport {
	
	static final Logger logger = Logger.getLogger(LoginAction.class);

	private Taikhoan user;

	public Taikhoan getUser() {
		return user;
	}

	public void setUser(Taikhoan user) {
		this.user = user;
	}

	private String email, matkhau;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	
	@Override
	public String execute() {

		TaikhoanDAO dao = new TaikhoanDAO();

		user = dao.getTaikhoanByEmail(email);
		
		if (user != null) {
			// tạo session
			Map session = (Map) ActionContext.getContext().get("session");
			session.put("username", user.getTentaikhoan());
			session.put("user", user);
			return SUCCESS;
		// user có tồn tại và mật khẩu sai	
		} else if(user !=null && !user.getMatkhau().equals(matkhau))
			return ERROR;
		// user không tồn tại
		else
			return ERROR;
	}
}
