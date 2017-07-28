package com.ss.SmartPrixB.Dao;

import java.util.List;

import com.ss.SmartPrixB.model.User;

public interface UserDao {

	public boolean addUser(User u);
	public boolean deleteUser(User u);
	public boolean updateUser(User u);
	List<User> getAllUser();
	User getUserByID(Integer userID);
}
