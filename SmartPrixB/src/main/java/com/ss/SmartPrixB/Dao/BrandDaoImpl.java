package com.ss.SmartPrixB.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Brand;
import com.ss.SmartPrixB.model.Category;
@Repository("brandDao")
@Transactional
public class BrandDaoImpl implements BrandDao {
	@Autowired
	SessionFactory sessionFactory;
	public boolean addBrand(Brand b) {
		Session s1=sessionFactory.getCurrentSession();
		s1.persist(b);
		return true;
	}

	public boolean deleteBrand(int brandID) {
		Session s1= sessionFactory.getCurrentSession();
		Brand b =(Brand)s1.load(Brand.class, brandID);
		s1.delete(b);
		return true;
	}

	public boolean updateBrand(Brand b) {
		Session s1 =sessionFactory.getCurrentSession();
		s1.update(b);
		return true;
	}

	public List<Brand> getAllBrands() {
		Session s=sessionFactory.getCurrentSession();
		Query query=s.createQuery("from Brand");
		List<Brand> list=query.getResultList(); 
		return list;
	}

	public Brand getBrandByID(int brandID) {
		Session s1 =sessionFactory.getCurrentSession();
		Query<Brand> q = s1.createQuery("from Brand where brandID="+brandID);
	    Brand b = (Brand)q.getSingleResult();
	    return b;
	}

}
