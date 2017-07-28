package com.ss.SmartPrixB.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Category;
import com.ss.SmartPrixB.model.User;
@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;	
	
	public boolean addcategory(Category c) {
		Session s1=sessionFactory.getCurrentSession();
		s1.persist(c);
		return true;
	}

	public boolean deleteCategory(int categoryID) {
	Session s1= sessionFactory.getCurrentSession();
	Category c =(Category)s1.load(Category.class, categoryID);
	s1.delete(c);
	return true;
	}

	@SuppressWarnings("deprecation")
	public boolean updateCategory(Category c) {
		Session s1 =sessionFactory.getCurrentSession();
		
		s1.update(c);
		return true;
	}

	public List<Category> getAllCategory() {
		
		Session s=sessionFactory.getCurrentSession();
		Query query=s.createQuery("from Category");
		List<Category> list=query.getResultList(); 
		return list;
	}


	public Category getCategoryByID(int categoryID) {
			Session s1 =sessionFactory.getCurrentSession();
		Query<Category> q = s1.createQuery("from Category where categoryID="+categoryID);
	    Category cat = (Category)q.getSingleResult();
	    return cat;
	}

}
