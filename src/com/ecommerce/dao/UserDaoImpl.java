
package com.ecommerce.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.ecommerce.models.User;

public class UserDaoImpl implements UserDao{
	
	private JdbcTemplate jdbcTemplate;

	public UserDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@SuppressWarnings({ "deprecation"})
	@Override
	public User loginUser(User user) {
		
		String login_sql = "SELECT * FROM user WHERE username=? AND password=?";
		
		try {

			User currentUser = jdbcTemplate.queryForObject(login_sql, new Object[] {user.getUsername(), user.getPassword() }, (rs, rowNum) ->
            new User(
                    rs.getInt("uid"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("role")
            ));

			return currentUser;
			
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


}