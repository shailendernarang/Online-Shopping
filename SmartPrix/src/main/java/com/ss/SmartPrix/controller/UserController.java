package com.ss.SmartPrix.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.CartDao;
import com.ss.SmartPrixB.Dao.UserDao;
import com.ss.SmartPrixB.model.Cart;
import com.ss.SmartPrixB.model.UserTable;

@Controller
public class UserController {
	@Autowired
	HttpSession httpSession;
	@Autowired
	UserDao userDao;
	UserTable u=new UserTable();
	@Autowired
	CartDao cartDAO;
	@RequestMapping(value="/save",method=RequestMethod.POST)
	
	public String addUser(@Valid @ModelAttribute("user")UserTable c,BindingResult br,Model model)
	{
		
	if(br.hasErrors()) {
		model.addAttribute("msg","Please fill details properly");
	
		return "Register";
	}else {
		
		userDao.save(c);
		
	}
		
		return "redirect:/";
	}
	@RequestMapping(value="/logg",method=RequestMethod.POST)
	public String validate(HttpServletRequest httpServletRequest,Principal p,Model model)
	{
		
			
		
		 	httpSession=httpServletRequest.getSession(true);
			httpSession.setAttribute("loggedInUser", true);
			httpSession.setAttribute("loggedInUsername",userDao.getUserByUserName(p.getName()));
			httpSession.setAttribute("loggedInName",p.getName());
			@SuppressWarnings("unused")
			Cart cart=new Cart();
			httpSession.setAttribute("numberProducts", cartDAO.getNumberOfProducts(p.getName()));
			httpSession.setAttribute("cartList", cartDAO.getCartList(p.getName()));
			
		return "/";
		
	}
	@RequestMapping(value="/updateUser/{userName}")
	public String updateUser(@ModelAttribute("user")UserTable user,Model model)
	{	
		userDao.update(user);
		return "UserProfile";
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String loginerror(Model model) {
        model.addAttribute("error", "true");
        return "denied";
    }


}