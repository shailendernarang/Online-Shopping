package com.ss.SmartPrixB.Dao;

import com.ss.SmartPrixB.model.Product;

public interface ProductDao {

	public boolean addProduct(Product p);
	public boolean deleteProduct(Product p);
	public boolean updateProduct(Product p);
}
