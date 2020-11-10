package com.ecommerce.models;

public class Product {

	private int pid;
	private String product_name;
	private String description;
	private String category;
	private double price;
	private int stock_amt;
	private String picture;
	
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Product(int pid, String product_name, String description, String category, double price, int stock_amt,
			String picture) {
		super();
		this.pid = pid;
		this.product_name = product_name;
		this.description = description;
		this.category = category;
		this.price = price;
		this.stock_amt = stock_amt;
		this.picture = picture;
	}

	

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStock_amt() {
		return stock_amt;
	}
	public void setStock_amt(int stock_amt) {
		this.stock_amt = stock_amt;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}


	@Override
	public String toString() {
		return "Product [pid=" + pid + ", product_name=" + product_name + ", description=" + description + ", category="
				+ category + ", price=" + price + ", stock_amt=" + stock_amt + ", picture=" + picture + "]";
	}
	
	
}
