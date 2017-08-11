package com.ss.SmartPrix.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ss.SmartPrixB.Dao.BrandDao;
import com.ss.SmartPrixB.Dao.CategoryDao;
import com.ss.SmartPrixB.Dao.ProductDao;
import com.ss.SmartPrixB.Dao.UserDao;
import com.ss.SmartPrixB.model.User;
import com.ss.SmartPrixB.model.Category;
import  com.ss.SmartPrixB.model.Product;
import com.ss.SmartPrixB.model.ShippingDetails;
import com.ss.SmartPrixB.model.BillingDetails;
import  com.ss.SmartPrixB.model.Brand;

@Controller
public class HomeController {
	@Autowired
	UserDao userDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	BrandDao brandDao;
	@RequestMapping("/")
	public String home(Model model1)
	{
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandLIst",brandDao.getAllBrands());
		model1.addAttribute("productList",productDao.getAllProducts());
		
		return "index";
		
	}
	
	@RequestMapping("/Register")
	public String Register(Model model)
	{
		ShippingDetails shippingDetails = new ShippingDetails();
		BillingDetails billingDetails = new BillingDetails();
		User user=new User();
		user.setShippingDetails(shippingDetails);
		user.setBillingDetails(billingDetails);
		 
		model.addAttribute("user",new User());
		return "Register";
		
	}

	@RequestMapping("/admin/Category")
	public String Category(Model model1)
	{
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		
		model1.addAttribute("category",new Category());
		return "Category";
		
	}
	
	@RequestMapping("/admin/Product")
	public String Product(Model model1)
	{
		model1.addAttribute("productList",productDao.getAllProducts());
		model1.addAttribute("brandList",brandDao.getAllBrands());
		model1.addAttribute("product",new Product());
		return "Product";
		
	}
	@RequestMapping("/admin/Brand")
	public String Brand(Model model1)
	{
		model1.addAttribute("brandList",brandDao.getAllBrands());
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brand",new Brand());
		return "Brand";
		
	}
	@RequestMapping("/Login")
	public String Login()
	{
		return "Login";
	}
	@RequestMapping("/LogOut")
	public String Logout()
	{
		return "redirect:/index";
	}
	@RequestMapping("/BrandCard")
	public String BrandCard(Model model1)
	{
		model1.addAttribute("brandList",brandDao.getAllBrands());

		return "BrandCard";
	}
	
}
