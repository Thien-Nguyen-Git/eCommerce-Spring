
package com.ecommerce.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
 
@Controller
public class AdminController {
 
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>Hello!</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
	
		return new ModelAndView("register");
	}
	
	@RequestMapping("/customerManagement")
	public ModelAndView users() {
	
		return new ModelAndView("customerManagement");
	}
	
	@RequestMapping("/updateCustomer")
	public ModelAndView updateViaAdmin() {
	
		return new ModelAndView("updateCustomer");
	}
	
	@RequestMapping("/adminAddUser")
	public ModelAndView addViaAdmin() {
	
		return new ModelAndView("adminAddUser");
	}
}