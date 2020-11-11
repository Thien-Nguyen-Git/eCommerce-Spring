package com.ecommerce.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.ecommerce.models.User;

public class UserDaoImpl implements UserDao{
	
	private JdbcTemplate jdbcTemplate;

	public UserDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@SuppressWarnings("deprecation")
	@Override
	public String loginUser(User user) {
		
		String login_sql = "SELECT name FROM user WHERE username=? AND password=?";
		
		try {

			String name = jdbcTemplate.queryForObject(login_sql, new Object[] {user.getUsername(), user.getPassword() }, String.class);

			return name;
			
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public int registerUser(User user) {
		String register_sql = "INSERT INTO user (name, email, username, password, role) VALUES (?,?,?,?, 'user')";
		
		try {
			
			int counter = jdbcTemplate.update(register_sql, new Object[] 
					{ user.getName(), user.getEmail(), user.getUsername(), user.getPassword() });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@SuppressWarnings("deprecation")
	public String getUserRole(User user) {
		String user_role_sql = "SELECT role FROM user WHERE username = ?";
		
		try {
			
			String role = jdbcTemplate.queryForObject(user_role_sql, new Object[] {user.getUsername()} , String.class);
			
			return role;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}


}
