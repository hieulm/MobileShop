package com.hieulm.util;

import java.util.ArrayList;
import java.util.List;

import com.hieulm.model.BO.Product;

public class Cart {

	public Cart() {
		cartList = new ArrayList<CartDetail>();
	}

	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private List<CartDetail> cartList;

	public List<CartDetail> getCartList() {
		return cartList;
	}

	public void setCartList(List<CartDetail> cart) {
		this.cartList = cart;
	}

	public void addToCart(Product product, int quantity) {
		for (int i = 0; i < cartList.size(); i++) {
			if (product.isEqual(cartList.get(i).getProduct())) {
				cartList.get(i).setQuantity(
						cartList.get(i).getQuantity() + quantity);
				return;
			}
		}
		cartList.add(new CartDetail(product, quantity));
	}

	public void updateCart(Product product, int quantity){
		for (int i = 0; i < cartList.size(); i++) {
			if (product.isEqual(cartList.get(i).getProduct())) {
				cartList.get(i).setQuantity(quantity);
				return;
			}
		}
	}
	
	// xóa các sản phẩm có số lượng = 0 khỏi cart
	public void optimizeCart() {
		for (int i = 0; i < cartList.size(); i++) {
			CartDetail detail = cartList.get(i);
			if (detail.getQuantity() <= 0)
				cartList.remove(i);
		}
	}
}
