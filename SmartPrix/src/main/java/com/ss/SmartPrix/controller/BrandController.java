
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ss.SmartPrixB.Dao.BrandDao;
import com.ss.SmartPrixB.Dao.CategoryDao;
import com.ss.SmartPrixB.model.Brand;
@Controller
public class BrandController {

	@Autowired
	BrandDao brandDao;
	@Autowired
	CategoryDao categoryDao;
	Brand b = new Brand();
	
	@RequestMapping(value="/addBrand",method=RequestMethod.POST)
	public String addBrand(@ModelAttribute("brand")Brand p,HttpSession s,RedirectAttributes redirect)
	{ 	MultipartFile m=p.getImage();
		if(p.getBrandID()==0)
		{
			boolean flag=brandDao.addBrand(p);
			
			System.out.println(m.getOriginalFilename());
			ServletContext context=s.getServletContext();
			String filelocation=context.getRealPath("/resources/images");
			System.out.println(filelocation);
			String filename=filelocation+"\\"+p.getBrandID()+".jpg";
			System.out.println(filename);
			
			try{
				byte b[]=m.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
			}
			
			catch(Exception e){}
			if (flag) {
				redirect.addFlashAttribute("success",p.getBrandName() + " " + "Successfully added to brand!");
				}
		}
		else
		{
			System.out.println(m.getOriginalFilename());
			ServletContext context=s.getServletContext();
			String filelocation=context.getRealPath("/resources/images");
			System.out.println(filelocation);
			String filename=filelocation+"\\"+p.getBrandID()+".jpg";
			System.out.println(filename);
			try{
				byte b[]=m.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
			}catch(Exception e){}
			boolean flag=brandDao.updateBrand(p);
			if (flag) {
				redirect.addFlashAttribute("success","Successfully updated ");
				}
		}
		return "redirect:/admin/Brand";
		
		
	}
@RequestMapping(value="/updateBrand/{brandID}")
	
	public String updateBrand(@PathVariable("brandID")Integer brID,Model model)
	{
	    model.addAttribute("brand",brandDao.getBrandByID(brID));
	    model.addAttribute("categoryList",categoryDao.getAllCategory());
		model.addAttribute("brandList", brandDao.getAllBrands());
		return "Brand";
	}
@RequestMapping(value="/deleteBrand/{brandID}")

public String deleteProduct(@PathVariable("brandID")Integer brID,Model model)
{
    
	model.addAttribute("brand",brandDao.getBrandByID(brID));
	brandDao.deleteBrand(brID);
	
	model.addAttribute("brandList",brandDao.getAllBrands());
	return "redirect:/admin/Brand";
}
}
