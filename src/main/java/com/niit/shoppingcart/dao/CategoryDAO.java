package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Category;



public interface CategoryDAO {

	
	
	public List<Category> getAllCategories();
	public Category saveOrUpdate(String id,String name,String description);
	public Category update(String id,String desc,String name);
	
	public Category getCategoryByID(String id);
	public boolean deleteCategory(String id);
}
