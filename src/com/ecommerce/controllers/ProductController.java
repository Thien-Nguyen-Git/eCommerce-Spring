package com.ecommerce.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	@RequestMapping("admin/productManagement")
	public ModelAndView products() {
	
		return new ModelAndView("productManagement");
	}
	
	@RequestMapping("admin/addProduct")
	public ModelAndView addProd() {
	
		return new ModelAndView("addProduct");
	}
	
	@RequestMapping("admin/products")
	public ModelAndView prodList() {
	
		return new ModelAndView("productList");
	}
	
	@RequestMapping("admin/delProduct")
	public ModelAndView delProd() {
	
		return new ModelAndView("delProduct");
	}
	
	@RequestMapping("admin/updateProduct")
	public ModelAndView upProd() {
	
		return new ModelAndView("updateProduct");
	}
}
