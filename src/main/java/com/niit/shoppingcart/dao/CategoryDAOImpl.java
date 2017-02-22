package com.niit.shoppingcart.dao;

import java.util.Iterator;
import java.util.List;

import org.h2.engine.Session;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;
	@Autowired
	public SessionFactory sessionFactory;
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	@Transactional
public List<Category> getAllCategories() {
		
		String hql="from Category";
		
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list(); 
	}

	
	@Transactional
public Category getCategoryByID(String id) {
	return (Category) sessionFactory.getCurrentSession().get(Category.class,id);
}
	
	@Transactional
	public boolean save(Category category) {
	try {
			sessionFactory.getCurrentSession().save(category);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			
		}
	return true;
	}
   @Transactional
	public Category update(String id,String desc,String name) {
	  
	   category=categoryDAO.getCategoryByID(id);
	    
	    category.setName(name); 
	    category.setDescription(desc); 
	    sessionFactory.getCurrentSession().save(category);
	
	  return category;
   }
   @Transactional
	public Category saveOrUpdate(String id, String name, String description) {

	    category.setId(id);
	    category.setName(name);
	    category.setDescription(description);
		   
		   sessionFactory.getCurrentSession().save(category);
				
		  return category; 
		
	}
   @Transactional
public boolean deleteCategory(String id) {
	   
	   sessionFactory.getCurrentSession().createQuery("delete from Category WHERE id = '"+id+"'").executeUpdate();
	   
	   return true;
}


	
	
	
	
	
	
}




