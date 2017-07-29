package com.ss.SmartPrix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.ProductDao;
import com.ss.SmartPrixB.model.Product;


@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	
	public String addProduct(@ModelAttribute("product")Product p)
	{
		

		if(p.getProductID()==0)
		{
			productDao.addProduct(p);
		}
		else
		{
			productDao.updateProduct(p);
		}
		return "redirect:/Product";
		
		
	}
@RequestMapping(value="/updateProduct/{productID}")
	
	public String updateProduct(@PathVariable("productID")Integer proID,Model model)
	{
	    model.addAttribute("product",productDao.getProductByID(proID));
		model.addAttribute("productList", productDao.getAllProducts());
		return "Product";
	}
@RequestMapping(value="/deleteProduct/{productID}")

public String deleteProduct(@PathVariable("productID")Integer proID,Model model)
{
    
	model.addAttribute("product",productDao.getProductByID(proID));
	productDao.deleteProduct(proID);
	
	model.addAttribute("productList",productDao.getAllProducts());
	return "Product";
}
	
}