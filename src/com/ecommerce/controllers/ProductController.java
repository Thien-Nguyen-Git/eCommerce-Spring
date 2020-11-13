package com.ecommerce.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.dao.ProductDao;
import com.ecommerce.models.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDao productDao;
	
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
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public ModelAndView displayShop() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Product> productList = productDao.getAllProducts();
		
		mv.addObject("productList", productList);
		mv.setViewName("shop");
		
		return mv;
	}
	
	@RequestMapping(value = "/shop/product", method = RequestMethod.GET)
	public ModelAndView displayProduct(@RequestParam("pid") int pid, RedirectAttributes redirAtt) {
		
		ModelAndView mv = new ModelAndView();
		
		Product product = productDao.getProduct(pid);
		
		mv.addObject("product", product);
		mv.setViewName("product");
		
		return mv;
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