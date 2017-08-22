package com.ss.SmartPrixB.Dao;



import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Authorise;
import com.ss.SmartPrixB.model.User;
@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {
@Autowired
SessionFactory sessionFactory;
User user = new User();
@Autowired
UserDao userDao;
	public boolean addUser(User u) {
	/*	Session s1=sessionFactory.getCurrentSession();
		s1.persist(u);
		return true;*/
		return false;
	}
	public boolean save(User u) {
		Session session=sessionFactory.getCurrentSession();
		u.getBillingDetails().setUsr(u);
		u.getShippingDetails().setUser(u);
		u.setActive(true);
		session.persist(u); 
		session.persist(u.getBillingDetails());
		session.persist(u.getShippingDetails());
		
		Authorise auth = new Authorise();
		auth.setROLE("ROLE_USER");
		auth.setUsername(u.getUserName());
		session.persist(auth);
		return true;
	}
	public User getUserById(int id) {
		
		try {
			return (User) sessionFactory.getCurrentSession().get(User.class, id);
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
			
		}
	}

	
	public User getUserByUserName(String username) {
		
		try {
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery("from User where userName= '" + username + "'");
			User user = (User) query.uniqueResult();

			return user;
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
		}
	}


	
	public User getUsersById(int id) {
		try {
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery("FROM User where userID=" + id);
			return (User) query.uniqueResult();
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
		}
	}

	public boolean getStatus(int id) {
		User users = getUsersById(id);
		return users.isActive();
	}

	
	public int changeStatus(int id)  {
		try {
			User users = getUsersById(id);
			boolean isEnable = users.isActive();

			if (isEnable) {
				@SuppressWarnings("rawtypes")
				Query query = sessionFactory.getCurrentSession()
						.createQuery("UPDATE User SET enabled = " + false + " WHERE userID = " + id);
				return query.executeUpdate();
			} else {
				@SuppressWarnings("rawtypes")
				Query query = sessionFactory.getCurrentSession()
						.createQuery("UPDATE User SET enabled = " + true + " WHERE userID = " + id);
				return query.executeUpdate();
			}
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
			
		}
	}
	public boolean update(User u) {
		Session s1 =sessionFactory.getCurrentSession();
		
		s1.update(u);
		return true;
	}

}
	

