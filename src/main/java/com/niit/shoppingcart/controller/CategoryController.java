package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;

import com.niit.shoppingcart.model.Category;

@Controller
public class CategoryController 
{

	@Autowired
	Category category;
	@Autowired
	CategoryDAO categoryDAO;
	
	
	@RequestMapping("/get")
	public ModelAndView getAll(Model model)
	{
		
		ModelAndView mv1=new ModelAndView("category");
		
		
		
		mv1.addObject("categorylist",categoryDAO.getAllCategories());
		
		System.out.println("ending method getallcategory");
		return mv1;
	}
	
	 @RequestMapping("/saveAll")
		
	   	public ModelAndView save(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("desc") String desc)
	   	{
	    	
	    	
	    	if(categoryDAO.saveOrUpdate(id, name, desc)!=null)
	    	{
	    		ModelAndView mv=new ModelAndView("category");
	    		mv.addObject("categorylist",categoryDAO.getAllCategories());
//	    		mv.addObject("regsucess","reg success");
	    		return mv;
	    	}
	    	
			return null;
	    	
	    	
	   	}
	 @RequestMapping("update/{id}")
		
	   	public ModelAndView update(@PathVariable("id") String id,@RequestParam String name,@RequestParam String desc,Model model)
	   	{
	    	
	    	
	    	if(categoryDAO.update(id,desc,name)!=null)
	    	{
	    		 
	    		System.out.println("start update");
	    		
	    		category=categoryDAO.getCategoryByID(id);
	    		ModelAndView mv=new ModelAndView("category");
	    		model.addAttribute("category",category);
	    		mv.addObject("categorylist",categoryDAO.getAllCategories());
//	    		mv.addObject("regsucess","reg success");
	    		System.out.println("end update");
	    		return mv;
	    	}
	    	
			return null;
	   	}
	 

	 @RequestMapping("manage_category_edit/{id}")
		
	   	public ModelAndView manage_category_edit(@PathVariable("id") String id,Model model, RedirectAttributes redir)
	   	{
	    	
		 ModelAndView mv=new ModelAndView("Editcategory");
	            System.out.println("start edit");
	    		category=categoryDAO.getCategoryByID(id);
	    		System.out.println(category);
	    		
	    		
	    		
	    		model.addAttribute("category",category);
	    		
	    			mv.addObject("categorylist",categoryDAO.getAllCategories());
	    			System.out.println("end edit");
	    			
	    			
	    		return mv;
	    		
	    		
	    	
			
	   	}
	    
	 @RequestMapping("edit")
		
	   	public ModelAndView edit()
	   	{
	    	
	    	
	            
	    		
	    		
	    		
	    		
	    		ModelAndView mv=new ModelAndView("Editcategory");
	    			mv.addObject("categorylist",categoryDAO.getAllCategories());
	    		return mv;
	    	
	    	
			
	   	}
	 @RequestMapping("delete/{id}")
		
	   	public ModelAndView delete(@PathVariable("id") String id,Model model )
	   	{
	    	
	    	
	            
	    		
	    		ModelAndView mv=new ModelAndView("category");
	    		
	    categoryDAO.deleteCategory(id);
	    	mv.addObject("categorylist",categoryDAO.getAllCategories());
	    	
	    	
	    	
			return mv;
	    	
	    	
			
	   	}
}