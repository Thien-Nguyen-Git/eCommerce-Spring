
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

	@SuppressWarnings("deprecation")
	@Override
	public Cart getCart(int uid) {
		
		String get_cart_sql = "SELECT * FROM cart WHERE uid = ? AND paid = false";
		
		try {
			
			Cart currentCart = jdbcTemplate.queryForObject(get_cart_sql, new Object[] {uid}, (rs, rowNum) ->
            new Cart(
                    rs.getInt("cart_id"),
                    rs.getInt("uid"),
                    rs.getBoolean("paid"),
                    rs.getDouble("total"),
                    rs.getObject("date", LocalDateTime.class)
            ));
			
			return currentCart;
			
		} catch (Exception e) {
			return null;
		}
		
	}
	
	@Override
	public int createCart(int uid) {

		String create_cart_sql = "INSERT INTO cart (uid, paid, total) VALUES (?, false, 0.00)";
		
		try {
			
			int createCart = jdbcTemplate.update(create_cart_sql, new Object[] {uid});
			
			return createCart;
			
		} catch(Exception e) {
			return 0;
		}
	}

	@Override
	public int updateCartTotal(int cart_id, double price) {
		
		String update_total_sql = "UPDATE cart SET total = ? WHERE cart_id = ?";
		
		try {
			
			int updateTotal = jdbcTemplate.update(update_total_sql, new Object[] {price, cart_id}); 
			
			return updateTotal;
			
		} catch (Exception e) {
			
			return 0;
		}
		
	}

	@Override
	public int updateCartStatus(int cart_id, LocalDateTime date) {

		String update_status_sql = "UPDATE cart SET paid = true, date = ? WHERE cart_id = ?";
		
		try {
			
			int updateTotal = jdbcTemplate.update(update_status_sql, new Object[] {date , cart_id}); 
			
			return updateTotal;
			
		} catch (Exception e) {
			
			return 0;
		}
	}
	
	@SuppressWarnings("deprecation")
	@Override
	public Cart getCompleteCart(int uid, int cart_id) {
		
		String get_cart_sql = "SELECT * FROM cart WHERE uid = ? AND cart_id = ? AND paid = true";
		
		try {
			
			Cart currentCart = jdbcTemplate.queryForObject(get_cart_sql, new Object[] {uid}, (rs, rowNum) ->
            new Cart(
                    rs.getInt("cart_id"),
                    rs.getInt("uid"),
                    rs.getBoolean("paid"),
                    rs.getDouble("total"),
                    rs.getObject("date", LocalDateTime.class)
            ));
			
			return currentCart;
			
		} catch (Exception e) {
			return null;
		}
		
	}

	@SuppressWarnings("deprecation")
	@Override
	public LocalDateTime getCartDate(int cart_id) {

		String get_date_sql = "SELECT date FROM cart WHERE cart_id = ?";
		
		try {
			
			LocalDateTime date = jdbcTemplate.queryForObject(get_date_sql, new Object[] {cart_id}, LocalDateTime.class);
			
			return date;
			
		} catch (Exception e) {
			return null;
		}
	}


}