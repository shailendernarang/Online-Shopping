package com.ss.SmartPrixB.Dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Product;


@Repository("productDao")
@Transactional
@SuppressWarnings({ "rawtypes", "unchecked" ,"deprecation" })
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;	
	public boolean addProduct(Product p) {
		Session s1=sessionFactory.getCurrentSession();
		s1.persist(p);
		return true;
	}
	
	public boolean deleteProduct(int p) {
		Session s1= sessionFactory.getCurrentSession();
		Product p1 =(Product)s1.load(Product.class,p);
		s1.delete(p1);
		return true;
	}
	
	public boolean updateProduct(Product p) {
        Session s1 =sessionFactory.getCurrentSession();
		s1.update(p);
		return true;
	}
	
	public List<Product> getAllProducts() {
		Session s=sessionFactory.getCurrentSession();
		Query query=s.createQuery("from Product");
		List<Product> list=query.getResultList(); 
		return list;
	}
	public Product getProductByID(int productID) {
		Session s1 =sessionFactory.getCurrentSession();
		Query<Product> q = s1.createQuery("from Product where productID="+productID);
	    Product pro = (Product)q.getSingleResult();
	    return pro;
	}
	
	public List<Product> getProductByBrandID(int brID) {
		Session s1 =sessionFactory.getCurrentSession();
		Query q = s1.createQuery("from Product where brandID=?");
		q.setInteger(0,brID);
	    List<Product> pro = (List<Product>)q.getResultList();
	    return pro;
	}

	public List<Product> getAllProductsOther(int pid) {
		Session s1 =sessionFactory.getCurrentSession();
		Query<Product> q = s1.createQuery("from Product where productID!="+pid);
		List<Product> list=q.getResultList(); 
		return list;
	}
	

}
