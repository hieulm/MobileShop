package com.hieulm.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hieulm.model.BO.*;
import com.hieulm.model.DAO.*;
import com.hieulm.model.util.HibernateUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class MobileAction extends ActionSupport{

	private int mahangsx;	
	private List<Dienthoai> dienthoais;
	public int getMahangsx() {
		return mahangsx;
	}

	public void setMahangsx(int mahangsx) {
		this.mahangsx = mahangsx;
	}

	
	public List<Dienthoai> getDienthoais() {
		return dienthoais;
	}

	public void setDienthoais(List<Dienthoai> dienthoais) {
		this.dienthoais = dienthoais;
	}


	
	@Override
	public String execute() throws Exception {
		DienthoaiDAO dao = new DienthoaiDAO();
		
		if(mahangsx == 0) return ERROR;
		
		dienthoais = dao.getDienthoaiByHangsx(mahangsx);
//		Dienthoai firstOne = dienthoais.get(0);		
//		
//		ValueStack stack = ActionContext.getContext().getValueStack();  
//		Map<String, Object> context = new HashMap<String, Object>();
//		context.put("firstOne", firstOne);
//		stack.push(context);  
		
		return SUCCESS;
	}
	
}
