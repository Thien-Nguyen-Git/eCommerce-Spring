package com.ecommerce.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ecommerce.models.Product;

public class ProductDaoImpl implements ProductDao{
	
	private JdbcTemplate jdbcTemplate;

	public ProductDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}


	@SuppressWarnings("deprecation")
	@Override
	public Product getProduct(String pid) {
		
		String get_product_sql = "SELECT * FROM product WHERE pid = ?";
		
		try {

			Product product = jdbcTemplate.queryForObject(get_product_sql, new Object[] {pid }, Product.class);

			return product;
			
		} catch (Exception e) {
			return null;
		}
	}


	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Product> getAllProducts() {
		
		String get_products_sql = "SELECT * FROM product WHERE pid = ?";
		
		try {
			
			List<Product> productList = jdbcTemplate.query(get_products_sql, new BeanPropertyRowMapper(Product.class));
			
			return productList;
			
		} catch (Exception e) {
			return null;
		}
	}

}
