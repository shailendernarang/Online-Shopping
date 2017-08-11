package com.ss.SmartPrix.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.UserDao;
import com.ss.SmartPrixB.model.User;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;
	User u=new User();
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	
	public String addUser(@Valid @ModelAttribute("user")User c,BindingResult br)
	{
	if(br.hasErrors()) {
		
		return "Register";
	}else {
	//	if(c.getUserID()==0) {
		userDao.save(c);
		//}
		//else 
		/*{
			userDao.updateUser(c);
		}*/
	}
		return "index";
	}
	@RequestMapping("/logg")
	public String logg()
	
	{
		return "/";
		
	}


/*@RequestMapping(value="/updateUser/{userID}")
	
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
}*/


}