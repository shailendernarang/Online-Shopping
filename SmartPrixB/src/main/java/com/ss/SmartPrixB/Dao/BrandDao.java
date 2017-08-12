package com.ss.SmartPrixB.Dao;

import java.util.List;

import com.ss.SmartPrixB.model.Brand;

public interface BrandDao {
	public boolean addBrand(Brand b);
	public boolean deleteBrand(int brandID);
	public boolean updateBrand(Brand b);
	List<Brand> getAllBrands();
	Brand getBrandByID(int brandID);
	List<Brand> getBrandByCategoryID(int categoryID);
}
