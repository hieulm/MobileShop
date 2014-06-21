package com.hieulm.util;

import com.hieulm.model.BO.Product;

public class CartDetail {
	
	private Product product;
	private int quantity;
	
	public CartDetail(Product product, int quantity){
		this.product = product;
		this.quantity = quantity;
	}
	
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
	
}
