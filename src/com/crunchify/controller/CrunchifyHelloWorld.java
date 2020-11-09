
package com.crunchify.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
/*
 * author: Thien Nguyen
 * 
 */
 
@Controller
public class CrunchifyHelloWorld {
	
	@RequestMapping("/home")
	public ModelAndView home() {
	
		return new ModelAndView("home");
	}
	
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from ECommerceHelloWorld.java **********</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}
	
	@RequestMapping("/product")
	public ModelAndView product() {
	
		return new ModelAndView("product");
	}
	
	@RequestMapping("/add_product")
	public ModelAndView add_product() {
	
		return new ModelAndView("add_product");
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
	
		return new ModelAndView("register");
	}
	
	@RequestMapping("/cart")
	public ModelAndView cart() {
	
		return new ModelAndView("cart");
	}
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
	
		return new ModelAndView("admin");
	}
}