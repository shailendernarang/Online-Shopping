package com.ss.SmartPrixB.Dao;

import java.util.List;

import com.ss.SmartPrixB.model.Category;


public interface CategoryDao {

	public boolean addcategory(Category c);
	public boolean deleteCategory(int categoryID);
	public boolean updateCategory(Category c);
	List<Category> getAllCategory();
	Category getCategoryByID(int categoryID);
}
