package com.ss.SmartPrix.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ss.SmartPrixB.Dao.BrandDao;
import com.ss.SmartPrixB.Dao.CategoryDao;
import com.ss.SmartPrixB.Dao.ProductDao;
import com.ss.SmartPrixB.Dao.UserDao;

import com.ss.SmartPrixB.model.User;

@Controller
public class CheckoutController {


	@Autowired
	UserDao userDAO;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	HttpSession httpSession;
	@Autowired
	BrandDao brandDao;

	@RequestMapping("/order")
	public String createOrder(Model model1) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		String loggedInUsername = username;

		User user = userDAO.getUserByUserName(loggedInUsername);
	
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandList",brandDao.getAllBrands());
		model1.addAttribute("productList",productDao.getAllProducts());
		return "redirect:/checkout?userId=" + user.getUserID();
		
	}

}
