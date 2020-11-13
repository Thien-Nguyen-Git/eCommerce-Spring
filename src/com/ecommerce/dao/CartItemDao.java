package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.models.CartItem;

public interface CartItemDao {
	
	public CartItem getCartItem(int cart_item_id);
	public List<CartItem> getWholeCart(int cart_id);
	public int addProduct(int pid, int quantity, int cart_id);
	public int deleteProduct(int pid);
	public int updateQuantity(int cart_item_id, int quantity);

}
