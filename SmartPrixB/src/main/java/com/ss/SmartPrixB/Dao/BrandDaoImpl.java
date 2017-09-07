package com.ss.SmartPrixB.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Brand;
@SuppressWarnings("deprecation")
@Repository("brandDao")
@Transactional
public class BrandDaoImpl implements BrandDao {
	@Autowired
	SessionFactory sessionFactory;
	
	private final Logger log = (Logger) LoggerFactory.getLogger(BrandDaoImpl.class); 

	public boolean addBrand(Brand b) {
		try {
		Session s1=sessionFactory.getCurrentSession();
		s1.persist(b);
		log.info("home Working");
		}
		catch(Exception e) {
			log.error("");
		
		}
		return true;
	}

	public boolean deleteBrand(int brandID) {
		try {
		Session s1= sessionFactory.getCurrentSession();
		Brand b =(Brand)s1.load(Brand.class, brandID);
		s1.delete(b);
	
		log.info("home Working");
		}
		catch(Exception e) {
			log.error("");
		
		}
		return true;
	}

	public boolean updateBrand(Brand b) {
		try {
		Session s1 =sessionFactory.getCurrentSession();
		s1.update(b);
		log.info("home Working");
		}
		catch(Exception e) {
			log.error("");
		
		}
		return true;
	}

	public List<Brand> getAllBrands() {
		
		Session s=sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query query=s.createQuery("from Brand");
		@SuppressWarnings("unchecked")
		List<Brand> list=query.getResultList(); 
		return list;
		
		
	}

	public Brand getBrandByID(int brandID) {
		Session s1 =sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<Brand> q = s1.createQuery("from Brand where brandID="+brandID);
	    Brand b = (Brand)q.getSingleResult();
	    return b;
	}

	public List<Brand> getBrandByCategoryID(int categoryID) {
		Session s1 =sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query query=s1.createQuery("from Brand where categoryID=?");
		query.setInteger(0,categoryID);
		@SuppressWarnings("unchecked")
		List<Brand> listCatBrand=(List<Brand>)query.getResultList();
		return listCatBrand;
	    
		
	}



}
