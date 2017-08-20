package com.ss.SmartPrix.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ss.SmartPrixB.Dao.UserDao;

import com.ss.SmartPrixB.model.User;

@Controller
public class CheckoutController {


	@Autowired
	private UserDao userDAO;

	@RequestMapping("/order")
	public String createOrder() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		String loggedInUsername = username;

		User user = userDAO.getUserByUserName(loggedInUsername);
	
		
		return "redirect:/checkout?userId=" + user.getUserID();
	}

}
