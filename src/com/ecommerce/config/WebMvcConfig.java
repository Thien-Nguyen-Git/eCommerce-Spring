package com.ecommerce.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.ecommerce.dao.CartDao;
import com.ecommerce.dao.CartDaoImpl;
import com.ecommerce.dao.CartItemDao;
import com.ecommerce.dao.CartItemDaoImpl;
import com.ecommerce.dao.ProductDao;
import com.ecommerce.dao.ProductDaoImpl;
import com.ecommerce.dao.UserDao;
import com.ecommerce.dao.UserDaoImpl;

@Configuration
@EnableWebMvc
@ComponentScan("com.ecommerce")
public class WebMvcConfig {

	@Bean
	InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver viewresolver = new InternalResourceViewResolver();

		viewresolver.setPrefix("/WEB-INF/views/");
		viewresolver.setSuffix(".jsp");
		return viewresolver;

	}

	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		datasource.setUrl("jdbc:mysql://localhost:3306/teamecommercedb");
		datasource.setUsername("root");
		datasource.setPassword("root");

		return datasource;

	}

	@Bean
	public UserDao getUserDao() {
		return new UserDaoImpl(getDataSource());
	}
	
	@Bean
	public ProductDao getProductDao() {
		return new ProductDaoImpl(getDataSource());
	}
	
	@Bean
	public CartDao getCartDao() {
		return new CartDaoImpl(getDataSource());
	}
	
	@Bean
	public CartItemDao getCartItemDao() {
		return new CartItemDaoImpl(getDataSource());
	}

}
