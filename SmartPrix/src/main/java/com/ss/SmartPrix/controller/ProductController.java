package com.ss.SmartPrix.controller;



import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.ss.SmartPrixB.Dao.BrandDao;
import com.ss.SmartPrixB.Dao.ProductDao;
import com.ss.SmartPrixB.model.Product;


@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;
	@Autowired
	BrandDao brandDao;
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	
	public String addProduct(@ModelAttribute("product")Product p,HttpSession s)
	{
		

		if(p.getProductID()==0)
		{
		
			productDao.addProduct(p);
			MultipartFile m=p.getImage();
			System.out.println(m.getOriginalFilename());
			ServletContext context=s.getServletContext();
			String filelocation=context.getRealPath("/resources/images");
			System.out.println(filelocation);
			String filename=filelocation+"\\"+p.getProductID()+".jpg";
			System.out.println(filename);
			try{
				byte b[]=m.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
			}
			catch(Exception e){}
		}
		else
		{
			productDao.updateProduct(p);
		}
		return "redirect:/admin/Product";
	
		
		
	}
@RequestMapping(value="/updateProduct/{productID}")
	
	public String updateProduct(@PathVariable("productID")Integer proID,Model model)
	{
	    model.addAttribute("product",productDao.getProductByID(proID));
	    model.addAttribute("brandList",brandDao.getAllBrands());
		model.addAttribute("productList", productDao.getAllProducts());
		return "Product";
	}
@RequestMapping(value="/deleteProduct/{productID}")

public String deleteProduct(@PathVariable("productID")Integer proID,Model model)
{
    
	model.addAttribute("product",productDao.getProductByID(proID));
	productDao.deleteProduct(proID);
		model.addAttribute("productList",productDao.getAllProducts());
		return "redirect:/admin/Product";
}

	
}