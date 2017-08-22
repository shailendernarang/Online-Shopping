package com.ss.SmartPrixB.Dao;

import com.ss.SmartPrixB.model.User;

public interface UserDao {

	public boolean save(User u);
	
	public User getUserById(int id);

	public User getUsersById(int id);

	public User getUserByUserName(String username);
	
	public boolean getStatus(int id);

	public int changeStatus(int id)  ;
	
	public boolean update(User u);



}
