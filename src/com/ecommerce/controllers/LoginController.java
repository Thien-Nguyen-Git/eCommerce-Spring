package com.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.dao.UserDao;
import com.ecommerce.models.User;

@Controller
@SessionAttributes("currentUser")
public class LoginController {
	
	@Autowired
	private UserDao userDao;
	
	@ModelAttribute("currentUser")
	 public User user() {
	  return new User();
	 }
	
	@RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
	public ModelAndView displayLogin() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("login");
		
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("username") String username, @RequestParam("password") String password, Model model, @ModelAttribute("currentUser") User currentUser, RedirectAttributes redirAtt) {

		ModelAndView mv = new ModelAndView();

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);

		currentUser = userDao.loginUser(user);

		if (currentUser != null) {
			
			String role = currentUser.getRole();
			
			if (role.equals("admin")) {
				
				redirAtt.addFlashAttribute("message", "Welcome " + currentUser.getName());
				mv.setViewName("redirect:/admin");
				
			}else if (role.equals("user")) {
				
				redirAtt.addFlashAttribute("message", "Welcome " + currentUser.getName());
				model.addAttribute("currentUser", currentUser);
				mv.setViewName("redirect:/shop");
				
			}else {
				mv.addObject("errorMessage", "Invalid user.");
				mv.setViewName("login");
			}

		} else {

			mv.addObject("errorMessage", "Invalid user id or password.");
			mv.setViewName("login");
		}

		return mv;

	}


}
