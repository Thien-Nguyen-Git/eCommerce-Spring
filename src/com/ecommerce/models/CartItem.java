package com.ecommerce.models;

public class CartItem {

	private int cart_item_id;
	private int pid;
	private int quantity;
	private int cart_id;
	
	public CartItem() {
		super();
	}

	public CartItem(int cart_item_id, int pid, int quantity, int cart_id) {
		super();
		this.cart_item_id = cart_item_id;
		this.pid = pid;
		this.quantity = quantity;
		this.cart_id = cart_id;
	}

	public int getCart_item_id() {
		return cart_item_id;
	}

	public void setCart_item_id(int cart_item_id) {
		this.cart_item_id = cart_item_id;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	
	
}