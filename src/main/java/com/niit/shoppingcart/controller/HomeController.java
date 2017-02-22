package com.niit.shoppingcart.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.Supplier;

@Controller
public class HomeController {
	@RequestMapping("/")	
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("home")	
	public String home()
	{
		return "home";
	}
	@RequestMapping("contact")	
	public String contact()
	{
		return "contact";
	}
	
	
	
  
	
}
