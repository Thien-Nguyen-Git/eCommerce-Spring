
package com.ecommerce.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.ecommerce.models.CartItem;

public class CartItemDaoImpl implements CartItemDao {
	
	private JdbcTemplate jdbcTemplate;

	public CartItemDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@SuppressWarnings("deprecation")
	@Override
	public CartItem getCartItem(int cart_item_id) {

		String get_item_sql = "SELECT * FROM cart_item WHERE cart_item_id = ?";
		
		try {
			CartItem currentItem = jdbcTemplate.queryForObject(get_item_sql, new Object[] {cart_item_id}, (rs, rowNum) ->
            new CartItem(
                    rs.getInt("cart_item_id"),
                    rs.getInt("pid"),
                    rs.getInt("quantity"),
                    rs.getInt("cart_id")
            ));
			
			return currentItem;
			
		} catch (Exception e) {
			return null;
		}
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<CartItem> getWholeCart(int cart_id) {

		String get_cart_items_sql = "SELECT * FROM cart_item WHERE cart_id = ?";
		
		try {
			
			List<CartItem> cartList = jdbcTemplate.query(get_cart_items_sql, new Object[] {cart_id}, (rs, rowNum) ->
            new CartItem(
                    rs.getInt("cart_item_id"),
                    rs.getInt("pid"),
                    rs.getInt("quantity"),
                    rs.getInt("cart_id")
            ));
			
			return cartList;
			
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public int addProduct(int pid, int quantity, int cart_id) {

		String add_product_sql = "INSERT INTO cart_item (pid, quantity, cart_id) VALUES (?,?,?)";
		
		try {
			
			int addedProduct = jdbcTemplate.update(add_product_sql, new Object[] 
					{ pid, quantity, cart_id });

			return addedProduct;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int deleteProduct(int pid) {

		String delete_product_sql = "DELETE FROM cart_item WHERE pid = ?";
		
		try {
			
			int deletedProduct = jdbcTemplate.update(delete_product_sql, new Object[] 
					{ pid});

			return deletedProduct;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public int updateQuantity(int cart_item_id, int quantity) {

		String update_quantity_sql = "UPDATE cart_item SET quantity = ? WHERE cart_item_id = ?";
		
		try {
			
			int updateQuantity = jdbcTemplate.update(update_quantity_sql, new Object[] {quantity, cart_item_id}); 
			
			return updateQuantity;
			
		} catch (Exception e) {
			
			return 0;
		}
	}

}