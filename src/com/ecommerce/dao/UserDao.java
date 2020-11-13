package com.ecommerce.dao;

import com.ecommerce.models.User;

public interface UserDao {
	
	public User loginUser(User user);
	public int registerUser(User user);

}
