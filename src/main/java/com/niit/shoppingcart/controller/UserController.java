package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;

@Controller
public class UserController {

	@Autowired
	UserDAO registerdao;
	
@ModelAttribute("UserDetails")
public UserDetails user()
{
	return new UserDetails();
}
	
	
	

	@RequestMapping("login")
	public ModelAndView display1() {
		ModelAndView mv1 = new ModelAndView("login");
		return mv1;
	}

	@RequestMapping(value = "/fail2login", method = RequestMethod.GET)
	public ModelAndView loginerror(ModelMap model) {
		return new ModelAndView("login", "error", true);
	}

	@RequestMapping("register")
	public ModelAndView display2() {

		ModelAndView mv2 = new ModelAndView("register");
		return mv2;
	}

	@RequestMapping(value = "storeUser", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("UserDetails") UserDetails registeruser,BindingResult result) {
		if (result.hasErrors()) {
			return "register";
		}
		registerdao.saveorUpdate(registeruser);
		User loginuser = new User();
		
		loginuser.setUsername(registeruser.getUsername());
		loginuser.setPassword(registeruser.getPassword());
		loginuser.setStatus(registeruser.getStatus());
		registerdao.saveorUpdate(loginuser);
		return "register";
	}

	@ModelAttribute("User")
	public User createUser() {
		return new User();

	}

	@RequestMapping("/Admin")
	public ModelAndView display5() {
		System.out.println("admin");
		ModelAndView m5 = new ModelAndView("Admin");
		return m5;
	}
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public ModelAndView checkUserOne(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		if (request.isUserInRole("ROLE_ADMIN")) {
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName(); // get username
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			System.out.println("admin");
			// session.invalidate();
			ModelAndView m1 = new ModelAndView("Admin");
			return m1;
		}
		else if (request.isUserInRole("ROLE_USER"))
		{
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			ModelAndView m2 = new ModelAndView("viewproducts");
			return m2;
		}
		else
		{
			
		ModelAndView mv=new ModelAndView("home");
		return mv;
		}
		
		
	}
	@RequestMapping(value="/updateuser",method=RequestMethod.POST)
    public ModelAndView updateUser(HttpServletRequest request,@Valid @ModelAttribute("User")User editlogin,BindingResult result)
    {
		registerdao.update(editlogin);
		return new ModelAndView("ManageUsers");
    }
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logout()
	{
		
		return new ModelAndView("home");
	}

}

