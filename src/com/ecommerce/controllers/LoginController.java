package com.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.dao.UserDao;
import com.ecommerce.models.User;

@Controller
public class LoginController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
	public ModelAndView displayLogin() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("login");
		
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("username") String username, @RequestParam("password") String password, RedirectAttributes redirAtt) {

		ModelAndView mv = new ModelAndView();

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);

		String name = userDao.loginUser(user);

		if (name != null) {

			redirAtt.addFlashAttribute("message", "Welcome " + name);
			mv.setViewName("redirect:/home");

		} else {

			mv.addObject("errorMessage", "Invalid user id or password.");
			mv.setViewName("login");
		}

		return mv;

	}


}