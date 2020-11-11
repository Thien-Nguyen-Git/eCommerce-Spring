package com.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.dao.UserDao;
import com.ecommerce.models.User;

@Controller
public class RegisterController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView displayRegister() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("register");
		
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView userLogin(
			@RequestParam("name") String name, 
			@RequestParam("username") String username, 
			@RequestParam("password") String password, 
			@RequestParam("email") String email) {

		ModelAndView mv = new ModelAndView();

		User user = new User();
		
		user.setName(name);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);

		int count = userDao.registerUser(user);

		if (count != 0) {

			mv.addObject("message", "Account created");
			mv.setViewName("redirect:/login");

		} else {

			mv.addObject("errorMessage", "Failed to create the account");
			mv.setViewName("register");
		}

		return mv;

	}

}
