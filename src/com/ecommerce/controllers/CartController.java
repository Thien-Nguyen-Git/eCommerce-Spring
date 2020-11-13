package com.ecommerce.controllers;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.dao.CartDao;
import com.ecommerce.dao.CartItemDao;
import com.ecommerce.dao.ProductDao;
import com.ecommerce.models.Cart;
import com.ecommerce.models.CartItem;
import com.ecommerce.models.Product;

@Controller
@RequestMapping("/shop")
public class CartController {
	
	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private CartItemDao cartItem;
	
	@Autowired
	private ProductDao productDao;
	
	ModelAndView mv = new ModelAndView();
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView displayCart(@RequestParam("uid") int uid) {
		
		Cart userCart = cartDao.getCart(uid);
		
		if(userCart == null) {
			cartDao.createCart(uid);
			userCart = cartDao.getCart(uid);
		}
		
		List<CartItem> cartList = cartItem.getWholeCart(userCart.getCart_id());
		List<Product> cartItems = new ArrayList<>();
		
		double total = 0.00;
		
		for(CartItem ci : cartList) {
			int pid = ci.getPid();
			cartItems.add(productDao.getProduct(pid));
		}
		
		for(Product p : cartItems) {
			total += p.getPrice();
		}
		
		if(cartItems.size() == 0) {
			mv.setViewName("emptyCart");
		}else {
			mv.addObject("cart_id", userCart.getCart_id());
			mv.addObject("cartItems", cartItems);
			mv.addObject("total", total);
			mv.setViewName("cart");
		}
		
		cartDao.updateCartTotal(userCart.getCart_id(), total);
		
		return mv;
	}
	
	@RequestMapping(value = "/cart/delete", method = RequestMethod.POST)
	public ModelAndView deleteCartItem(@RequestParam("pid") int pid, RedirectAttributes redirAtt) {
		
		ModelAndView mv = new ModelAndView();
		
		int deletedItem = cartItem.deleteProduct(pid);
		
		if (deletedItem != 0) {

			redirAtt.addFlashAttribute("cartMessage", "Item removed");

		} else {

			redirAtt.addFlashAttribute("cartMessage", "Failed to remove the item");
		}
		
		mv.setViewName("redirect:/shop");
		
		return mv;
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public ModelAndView addToCart(@RequestParam("uid") int uid, @RequestParam("pid") int pid) {
		
		ModelAndView mv = new ModelAndView();
		
		Cart userCart = cartDao.getCart(uid);
		
		if(userCart == null) {
			cartDao.createCart(uid);
			userCart = cartDao.getCart(uid);
		}
		
		cartItem.addProduct(pid, 1, userCart.getCart_id());
		
		mv.setViewName("redirect:/shop");
		
		return mv;
	}
	
	@RequestMapping(value = "/receipt", method = RequestMethod.POST)
	public ModelAndView completeCart(@RequestParam("cart_id") int cart_id) {
		cartDao.updateCartStatus(cart_id, LocalDateTime.now());

		mv.setViewName("receipt");
		
		return mv;
	}
	
	@RequestMapping(value = "/receipt", method = RequestMethod.GET)
	public ModelAndView completeOrder(@RequestParam("uid") int uid, @RequestParam("cart_id") int cart_id) {
		
		Cart userCart = cartDao.getCart(uid);
		
		List<CartItem> cartList = cartItem.getWholeCart(userCart.getCart_id());
		List<Product> cartItems = new ArrayList<>();
		
		double total = 0.00;
		
		for(CartItem ci : cartList) {
			int pid = ci.getPid();
			cartItems.add(productDao.getProduct(pid));
		}
		
		for(Product p : cartItems) {
			total += p.getPrice();
		}
		
		LocalDateTime date = cartDao.getCartDate(cart_id);
		System.out.println(date);
		
		mv.addObject("cartItems", cartItems);
		mv.addObject("total", total);
		mv.addObject("date", date);
		
		return new ModelAndView("receipt");
	}
}
