
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
 
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
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
}