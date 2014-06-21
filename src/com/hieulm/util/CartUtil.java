package com.hieulm.util;

import java.util.List;

import com.hieulm.model.BO.*;

public class CartUtil {

	public static void addToCart(List<CartDetail> cart, Product product,
			int quantity) {
		for (int i = 0; i < cart.size(); i++) {
			if (product.isEqual(cart.get(i).getProduct())) {
				cart.get(i).setQuantity(cart.get(i).getQuantity() + quantity);
			} else {
				cart.add(new CartDetail(product, quantity));
			}
		}
		optimizeCart(cart);
	}
	
	public static void optimizeCart(List<CartDetail> cart){
		for(int i = 0 ; i<cart.size(); i++){
			CartDetail detail = cart.get(i);
			if(detail.getQuantity() == 0)
				cart.remove(i);
		}
	}
}
