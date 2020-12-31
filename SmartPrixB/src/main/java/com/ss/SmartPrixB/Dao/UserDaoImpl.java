package com.ss.SmartPrixB.Dao;



import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ss.SmartPrixB.model.Authorise;
import com.ss.SmartPrixB.model.UserTable;
@Repository("userDao")
@Transactional
@SuppressWarnings({ "rawtypes" ,"deprecation" })
public class UserDaoImpl implements UserDao {
@Autowired
SessionFactory sessionFactory;
UserTable user = new UserTable();
@Autowired
UserDao userDao;
	
	public boolean save(UserTable u) {
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
	public UserTable getUserById(int id) {
		
		try {
			return (UserTable) sessionFactory.getCurrentSession().get(UserTable.class, id);
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
			
		}
	}

	
	public UserTable getUserByUserName(String username) {
		
		try {
			Query query = sessionFactory.getCurrentSession().createQuery("from UserTable where userName= '" + username + "'");
			UserTable user = (UserTable) query.uniqueResult();

			return user;
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
		}
	}


	
	public UserTable getUsersById(int id) {
		try {
			Query query = sessionFactory.getCurrentSession().createQuery("FROM UserTable where userID=" + id);
			return (UserTable) query.uniqueResult();
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
		}
	}

	public boolean getStatus(int id) {
		UserTable users = getUsersById(id);
		return users.isActive();
	}

	
	public int changeStatus(int id)  {
		try {
			UserTable users = getUsersById(id);
			boolean isEnable = users.isActive();

			if (isEnable) {
				Query query = sessionFactory.getCurrentSession()
						.createQuery("UPDATE UserTable SET enabled = " + false + " WHERE userID = " + id);
				return query.executeUpdate();
			} else {
				Query query = sessionFactory.getCurrentSession()
						.createQuery("UPDATE UserTable SET enabled = " + true + " WHERE userID = " + id);
				return query.executeUpdate();
			}
		} catch (HibernateException e) {
			
			e.printStackTrace();
			throw e;
			
		}
	}
	public boolean update(UserTable u) {
		Session s1 =sessionFactory.getCurrentSession();
		u.setActive(true);
		s1.update(u);
		u.setUserName(u.getUserName());
		
		return true;
	}
	

}
	

