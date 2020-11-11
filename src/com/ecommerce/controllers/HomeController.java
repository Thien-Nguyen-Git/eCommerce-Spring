package com.ecommerce.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView displayAdminHome() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("adminHome");
		
		return mv;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView displayCustomerHome() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("customerHome");
		
		return mv;
	}

}
