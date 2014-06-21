package com.hieulm.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.BO.Product;
import com.hieulm.model.DAO.DienthoaiDAO;
import com.hieulm.util.Cart;
import com.hieulm.util.CartDetail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowCartAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3289000617895137410L;
	private Product product;
	private int quantity;
	

	public Product getProduct() {
		return product;
	}



	public void setProduct(Product product) {
		this.product = product;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	@Override
	public String execute(){
		Map session = (Map) ActionContext.getContext().get("session");
		Cart cart;
		cart = (Cart) session.get("cart");
		if(cart == null){
			cart = new Cart();
		}
		else{
		}
		session.put("cart", cart);
		return SUCCESS;
	}
}
