package com.ss.SmartPrix.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ss.SmartPrixB.Dao.BrandDao;
import com.ss.SmartPrixB.Dao.CartDao;
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
	HttpSession httpSession;
	@Autowired
	BrandDao brandDao;

	@RequestMapping("/")
	public String home(Model model1)
	{
		
		
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandList",brandDao.getAllBrands());
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
		model.addAttribute("categoryList",categoryDao.getAllCategory());
		model.addAttribute("brandList",brandDao.getAllBrands());	 
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
	public String Login(Model model)
	{
		
		model.addAttribute("categoryList",categoryDao.getAllCategory());
		model.addAttribute("brandList",brandDao.getAllBrands());
		return "Login";
	}
	@RequestMapping("/LogOut")
	public String Logout()
	{
		return "redirect:/index";
	}
	@RequestMapping("/BrandCard/{catID}")
	public String BrandCard(@PathVariable("catID")Integer cat,Model model1)
	{System.out.println("is going to reterieve brands corresponding to categoryid");
	model1.addAttribute("categoryList",categoryDao.getAllCategory());
	model1.addAttribute("brandList",brandDao.getAllBrands());
	model1.addAttribute("brandList",brandDao.getBrandByCategoryID(cat));
		//model1.addAttribute("brandList",brandDao.getAllBrands());

		return "BrandCard";
	}
	@RequestMapping("/BrandCard")
		
		public String BrandCardAgain(Model model1)
		{
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandList",brandDao.getAllBrands());
		return "BrandCard";
		}		
	
	@RequestMapping("/ProductDetail/{proID}")
	public String ProductDetail(@PathVariable("proID")Integer pro,Model model1)
	{
		model1.addAttribute("brand",brandDao.getAllBrands());
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandList",brandDao.getAllBrands());
		model1.addAttribute("productList",productDao.getProductByID(pro));
		model1.addAttribute("pro",productDao.getAllProducts());
		return "ProductDetail";
	}
	@RequestMapping("/ProductCard/{proID}")
	public String product(@PathVariable("proID")Integer pro,Model model1)
	{
		model1.addAttribute("brandList",brandDao.getAllBrands());
		model1.addAttribute("productList",productDao.getAllProducts());
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("productList",productDao.getProductByBrandID(pro));
		
		return "ProductCard";
	}
	@RequestMapping("/admin/AdminCard")
	
	public String AdminCard(Model model1)
	{
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandList",brandDao.getAllBrands());
	return "AdminCard";
	}		
	@RequestMapping("/UserProfile/{userName}")
	
	public String UserProfile(@PathVariable("userName")String UID,Model model1)
	{
		ShippingDetails shippingDetails = new ShippingDetails();
		User user = new User();
		user.getBillingDetails();
		user.getShippingDetails();
		
		model1.addAttribute("user",userDao.getUserByUserName(UID));
		model1.addAttribute("categoryList",categoryDao.getAllCategory());
		model1.addAttribute("brandList",brandDao.getAllBrands());
	return "UserProfile";
	}		
}
