package com.ecommerce.dao;

import java.time.LocalDateTime;

import com.ecommerce.models.Cart;

public interface CartDao {
	
	public Cart getCart(int uid);
	public int createCart(int uid);
	public int updateCartTotal(int cart_id, double price);
	public int updateCartStatus(int cart_id, LocalDateTime date);

}
