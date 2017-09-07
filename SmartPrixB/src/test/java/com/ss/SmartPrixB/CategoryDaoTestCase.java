package com.ss.SmartPrixB;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ss.SmartPrixB.Dao.CategoryDao;
import com.ss.SmartPrixB.model.Category;

public class CategoryDaoTestCase {
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static CategoryDao categoryDao;
	
	@Autowired
	static Category category;
	
	@BeforeClass
	public static void intialize()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.ss.SmartPrixB");
		context.refresh();
		categoryDao =(CategoryDao)context.getBean("categoryDao");
		category =(Category)context.getBean("category");
		
		
	}
	@Test
	public void addCategoryData()
	{
		
		category.setCategoryName("IOS");
		category.setCategoryDesc("New Launch");
		assertEquals("addCategoryData",categoryDao.addcategory(category),true);
		
	}
	
	@Test
	public void updateCategoryData()
	{
		category.setCategoryID(139);
		category.setCategoryName("IOSI");
		category.setCategoryDesc("Hey");
		assertEquals("updateCategoryData",categoryDao.updateCategory(category),true);
		
	}
	@Test
	public void deleteCategoryData()
	{
		assertEquals("deleteCategoryData",categoryDao.deleteCategory(139),true);

	}
}
