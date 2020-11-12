package com.ecommerce.dao;

import java.time.LocalDateTime;

import com.ecommerce.models.Cart;

public interface CartDao {
	
	public Cart getCart();
	public int updateCartTotal(double price);
	public int updateCartStatus(boolean paid, LocalDateTime date);

}
