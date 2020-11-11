package com.ecommerce.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	@RequestMapping("admin/customerManagement")
	public ModelAndView users() {
	
		return new ModelAndView("customerManagement");
	}
	
	@RequestMapping("admin/updateCustomer")
	public ModelAndView updateViaAdmin() {
	
		return new ModelAndView("updateCustomer");
	}
	
	@RequestMapping("admin/adminAddUser")
	public ModelAndView addViaAdmin() {
	
		return new ModelAndView("adminAddUser");
	}
}
