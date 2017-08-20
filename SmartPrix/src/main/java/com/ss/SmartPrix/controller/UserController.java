package com.ss.SmartPrix.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.CartDao;
import com.ss.SmartPrixB.Dao.UserDao;
import com.ss.SmartPrixB.model.Cart;
import com.ss.SmartPrixB.model.User;

@Controller
public class UserController {
	@Autowired
	HttpSession httpSession;
	@Autowired
	UserDao userDao;
	User u=new User();
	@Autowired
	CartDao cartDAO;
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
		return "redirect:/";
	}
	@RequestMapping(value="/logg",method=RequestMethod.POST)
	public String validate(HttpServletRequest httpServletRequest,Principal p)
	{
		 	httpSession=	httpServletRequest.getSession(true);
			httpSession.setAttribute("loggedInUser", true);
			httpSession.setAttribute("loggedInUsername",userDao.getUserByUserName(p.getName()));
			httpSession.setAttribute("loggedInName",p.getName());
			Cart cart=new Cart();
			httpSession.setAttribute("numberProducts", cartDAO.getNumberOfProducts(p.getName()));
			httpSession.setAttribute("cartList", cartDAO.getCartList(p.getName()));
			
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