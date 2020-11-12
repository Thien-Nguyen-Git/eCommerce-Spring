package com.ecommerce.dao;

import java.time.LocalDateTime;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.ecommerce.models.Cart;

public class CartDaoImpl implements CartDao{
	
	private JdbcTemplate jdbcTemplate;

	public CartDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@Override
	public Cart getCart() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateCartTotal(double price) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCartStatus(boolean paid, LocalDateTime date) {
		// TODO Auto-generated method stub
		return 0;
	}


}
