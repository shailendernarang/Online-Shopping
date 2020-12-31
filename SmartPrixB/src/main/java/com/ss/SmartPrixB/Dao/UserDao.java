package com.ss.SmartPrixB.Dao;

import com.ss.SmartPrixB.model.UserTable;

public interface UserDao {

	public boolean save(UserTable u);
	
	public UserTable getUserById(int id);

	public UserTable getUsersById(int id);

	public UserTable getUserByUserName(String username);
	
	public boolean getStatus(int id);

	public int changeStatus(int id)  ;
	
	public boolean update(UserTable u);
	

}
