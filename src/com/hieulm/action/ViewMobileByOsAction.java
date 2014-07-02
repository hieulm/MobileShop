package com.hieulm.action;

import java.util.List;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.DAO.DienthoaiDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ViewMobileByOsAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -628053088990355890L;

	private int maos;	
	private List<Dienthoai> dienthoais;
	
	public int getMaos() {
		return maos;
	}

	public void setMaos(int maos) {
		this.maos = maos;
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
		
		if(maos == 0) return ERROR;
		
		dienthoais = dao.getDienthoaiByHedieuhanh(maos);
//		Dienthoai firstOne = dienthoais.get(0);		
//		
//		ValueStack stack = ActionContext.getContext().getValueStack();  
//		Map<String, Object> context = new HashMap<String, Object>();
//		context.put("firstOne", firstOne);
//		stack.push(context);  
		
		return SUCCESS;
	}

}
