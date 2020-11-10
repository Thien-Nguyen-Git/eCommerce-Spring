package com.ecommerce.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	@RequestMapping("/productManagement")
	public ModelAndView products() {
	
		return new ModelAndView("productManagement");
	}
	
	@RequestMapping("/addProduct")
	public ModelAndView addProd() {
	
		return new ModelAndView("addProduct");
	}
	
	@RequestMapping("/products")
	public ModelAndView prodList() {
	
		return new ModelAndView("productList");
	}
}
