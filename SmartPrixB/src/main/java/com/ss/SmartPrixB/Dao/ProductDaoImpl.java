package com.ss.SmartPrixB.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Product;
@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;	
	public boolean addProduct(Product p) {
		Session s1=sessionFactory.getCurrentSession();
		s1.persist(p);
		return true;
	}

	public boolean deleteProduct(Product p) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateProduct(Product p) {
		// TODO Auto-generated method stub
		return false;
	}

}
