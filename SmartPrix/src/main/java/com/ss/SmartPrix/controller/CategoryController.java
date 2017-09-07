package com.ss.SmartPrix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ss.SmartPrixB.Dao.CategoryDao;
import com.ss.SmartPrixB.model.Category;


@Controller
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;

	@RequestMapping(value="/addCategory",method=RequestMethod.POST)

	public String addCategory(@ModelAttribute("category")Category c, RedirectAttributes redirect)
	{
		if(c.getCategoryID()==0)
		{
			boolean flag=categoryDao.addcategory(c);
			if (flag) {
			redirect.addFlashAttribute("success",c.getCategoryName() + " " + "Successfully added to category!");
			}
			
		}
		else
		{
			boolean flag=categoryDao.updateCategory(c);
			if (flag) {
				redirect.addFlashAttribute("success","Successfully updated ");
				}
		}
		return "redirect:/admin/Category";
		
	}
@RequestMapping(value="/updateCategory/{categoryID}")
	
	public String updateUser(@PathVariable("categoryID")Integer catID,Model model)
	{
	    model.addAttribute("category",categoryDao.getCategoryByID(catID));
		model.addAttribute("categoryList", categoryDao.getAllCategory());
		return "Category";
	}
@RequestMapping(value="/deleteCategory/{categoryID}")

public String deleteUser(@PathVariable("categoryID")Integer catID,Model model)
{
    
	model.addAttribute("category",categoryDao.getCategoryByID(catID));
	categoryDao.deleteCategory(catID);
	
	model.addAttribute("categoryList", categoryDao.getAllCategory());
	return "redirect:/admin/Category";
}

}
	
	