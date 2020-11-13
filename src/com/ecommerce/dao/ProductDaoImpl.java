package com.ecommerce.dao;

import java.util.Base64;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ecommerce.models.Product;
import com.mysql.cj.jdbc.Blob;

public class ProductDaoImpl implements ProductDao{
	
	private JdbcTemplate jdbcTemplate;

	public ProductDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}


	@SuppressWarnings("deprecation")
	@Override
	public Product getProduct(int pid) {
		
		String get_product_sql = "SELECT * FROM product WHERE pid = ?";
		
		try {

			Product product = jdbcTemplate.queryForObject(get_product_sql, new Object[] { pid }, (rs, rowNum) ->
            new Product(
                    rs.getInt("pid"),
                    rs.getString("product_name"),
                    rs.getString("description"),
                    rs.getString("category"),
                    rs.getDouble("price"),
                    rs.getInt("stock_amt"),
                    Base64.getEncoder().encodeToString(rs.getBytes("picture"))
            ));

			return product;
			
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<Product> getAllProducts() {
		
		String get_products_sql = "SELECT * FROM product";
		
		try {
			
			List<Product> productList = jdbcTemplate.query(get_products_sql, (rs, rowNum) ->
            new Product(
                    rs.getInt("pid"),
                    rs.getString("product_name"),
                    rs.getString("description"),
                    rs.getString("category"),
                    rs.getDouble("price"),
                    rs.getInt("stock_amt"),
                    rs.getString("picture")
            ));
			
			return productList;
			
		} catch (Exception e) {
			return null;
		}
	}

}