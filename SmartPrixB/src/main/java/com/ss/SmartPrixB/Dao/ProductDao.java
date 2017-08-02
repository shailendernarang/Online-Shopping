package com.ss.SmartPrixB.Dao;

import java.util.List;

import com.ss.SmartPrixB.model.Brand;
import com.ss.SmartPrixB.model.Product;

public interface ProductDao {

	public boolean addProduct(Product p);
	public boolean deleteProduct(int p);
	public boolean updateProduct(Product p);
	List<Product> getAllProducts();
	Product getProductByID(int productID);
	
	
	

}
