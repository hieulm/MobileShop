package com.hieulm.action;

import java.util.List;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.DAO.DienthoaiDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ViewMobileByPriceAction extends ActionSupport{
	
	private int minPrice, maxPrice;
	
	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}



	private List<Dienthoai> dienthoais;
	
	

	public List<Dienthoai> getDienthoais() {
		return dienthoais;
	}

	public void setDienthoais(List<Dienthoai> dienthoais) {
		this.dienthoais = dienthoais;
	}


	
	@Override
	public String execute() throws Exception {
		DienthoaiDAO dao = new DienthoaiDAO();
		
		System.out.println("inside ViewMobileByPriceAction");
		System.out.println("minPrice = " + minPrice);
		System.out.println("maxPrice = " + maxPrice);
		
		dienthoais = dao.getDienthoaiByPriceRange(minPrice, maxPrice);
//		Dienthoai firstOne = dienthoais.get(0);		
//		
//		ValueStack stack = ActionContext.getContext().getValueStack();  
//		Map<String, Object> context = new HashMap<String, Object>();
//		context.put("firstOne", firstOne);
//		stack.push(context);  
		
		return SUCCESS;
	}

}
