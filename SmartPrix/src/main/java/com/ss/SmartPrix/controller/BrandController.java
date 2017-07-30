package com.ss.SmartPrix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ss.SmartPrixB.Dao.BrandDao;
import com.ss.SmartPrixB.model.Brand;
import com.ss.SmartPrixB.model.Product;
@Controller
public class BrandController {

	@Autowired
	BrandDao brandDao;
	
	@RequestMapping(value="/addBrand",method=RequestMethod.POST)
	
	public String addBrand(@ModelAttribute("brand")Brand p)
	{
		if(p.getBrandID()==0)
		{
			brandDao.addBrand(p);
		}
		else
		{
			brandDao.updateBrand(p);
		}
		return "redirect:/Brand";
		
		
	}
@RequestMapping(value="/updateBrand/{brandID}")
	
	public String updateBrand(@PathVariable("brandID")Integer brID,Model model)
	{
	    model.addAttribute("brand",brandDao.getBrandByID(brID));
		model.addAttribute("brandList", brandDao.getAllBrands());
		return "Brand";
	}
@RequestMapping(value="/deleteBrand/{brandID}")

public String deleteProduct(@PathVariable("brandID")Integer brID,Model model)
{
    
	model.addAttribute("brand",brandDao.getBrandByID(brID));
	brandDao.deleteBrand(brID);
	
	model.addAttribute("brandList",brandDao.getAllBrands());
	return "Brand";
}
}
