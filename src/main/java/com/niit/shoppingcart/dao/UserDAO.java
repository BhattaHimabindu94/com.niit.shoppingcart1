package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;

public interface UserDAO {

	public List<UserDetails> list();
	
	
	public UserDetails get(int id);
	
	
	
	
	
	
	
	public void delete(int id);


	public User getSingleUser(int id);


	public List getAllUsers();


	public void saveorUpdate(UserDetails registeruser);
	public void saveorUpdate(User loginuser);


	public void update(User editlogin);


	
	
	
}
