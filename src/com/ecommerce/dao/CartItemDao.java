package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.models.CartItem;

public interface CartItemDao {
	
	public CartItem getCartItem(int cart_item_id);
	public List<CartItem> getWholeCart();
	public int addProduct(int pid);
	public int deleteProduct(int pid);
	public int updateQuantity(int quantity);

}