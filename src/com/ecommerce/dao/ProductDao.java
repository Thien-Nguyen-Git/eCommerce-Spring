package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.models.Product;

public interface ProductDao {
	
	public Product getProduct(int pid);
	public List<Product> getAllProducts();

}