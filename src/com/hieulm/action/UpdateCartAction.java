package com.hieulm.action;

import java.util.Map;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.DAO.DienthoaiDAO;
import com.hieulm.util.Cart;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateCartAction extends ActionSupport{
	
	private int masanpham;
	private int sl;

	public int getMasanpham() {
		return masanpham;
	}



	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}



	public int getSl() {
		return sl;
	}



	public void setSl(int sl) {
		this.sl = sl;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		DienthoaiDAO dao = new DienthoaiDAO();
		Dienthoai dienthoai;
		
		
		if(masanpham == 0) {
			return ERROR;
		}
		dienthoai = dao.getDienthoaiById(masanpham);
		
		if(dienthoai == null) {
			return ERROR;
		}
			
		else{
			int q = sl;   
			Map session = (Map) ActionContext.getContext().get("session");
			Cart cart;
			cart = (Cart) session.get("cart");
			if(cart == null){
				cart = new Cart();
				cart.updateCart(dienthoai, q);
				cart.optimizeCart();
			}
			else{
				cart.updateCart(dienthoai, q);
				cart.optimizeCart();
			}
			session.put("cart", cart);
			return SUCCESS;
		}
	}

	
}
