package com.ss.SmartPrix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.ProductDao;
import com.ss.SmartPrixB.model.Product;


@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	
	public void addCategory(@ModelAttribute("product")Product p)
	{
		
		productDao.addProduct(p);
		
	}
	
	
}