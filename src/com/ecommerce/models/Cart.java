package com.ecommerce.models;

import java.time.LocalDateTime;

public class Cart {
	
	private int cart_id;
	private int uid;
	private boolean paid;
	private double total;
	private LocalDateTime date;
	
	
	public Cart() {
		super();
	}


	public Cart(int cart_id, int uid, boolean paid, double total, LocalDateTime date) {
		super();
		this.cart_id = cart_id;
		this.uid = uid;
		this.paid = paid;
		this.total = total;
		this.date = date;
	}


	public int getCart_id() {
		return cart_id;
	}


	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}


	public int getUid() {
		return uid;
	}


	public void setUid(int uid) {
		this.uid = uid;
	}


	public boolean isPaid() {
		return paid;
	}


	public void setPaid(boolean paid) {
		this.paid = paid;
	}


	public double getTotal() {
		return total;
	}


	public void setTotal(double total) {
		this.total = total;
	}


	public LocalDateTime getDate() {
		return date;
	}


	public void setDate(LocalDateTime date) {
		this.date = date;
	}


}
