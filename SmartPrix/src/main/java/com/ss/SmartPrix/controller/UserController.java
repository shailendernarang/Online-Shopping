package com.ss.SmartPrix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.UserDao;
import com.ss.SmartPrixB.model.User;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;
	User u=new User();
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	
	public String addUser(@ModelAttribute("user")User c)
	{
	
		if(c.getUserID()==0) {
		userDao.addUser(c);
		}
		else 
		{
			userDao.updateUser(c);
		}
	
		return "index";
	}
@RequestMapping(value="/updateUser/{userID}")
	
	public String updateUser(@PathVariable("userID")Integer userID,Model model)
	{
	    
		model.addAttribute("user",userDao.getUserByID(userID));
		model.addAttribute("userList", userDao.getAllUser());
		
		return "Register";
	}
@RequestMapping(value="/deleteUser/{userID}")

public String deleteUser(@PathVariable("userID")Integer userID,Model model)
{
    
	model.addAttribute("user",userDao.getUserByID(userID));
	userDao.deleteUser(u);
	model.addAttribute("userList", userDao.getAllUser());
	return "Register";
}


}