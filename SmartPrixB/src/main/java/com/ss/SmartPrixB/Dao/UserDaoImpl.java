package com.ss.SmartPrixB.Dao;



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

/*	public boolean deleteUser(User u) {
		Session s1 =sessionFactory.getCurrentSession();
		Query<User> query=s1.createQuery("delete from User where userID= "+u.getUserID());    
		query.executeUpdate();  
		return true;
	}


	public boolean updateUser(User u) {
	Session s1 =sessionFactory.getCurrentSession();
	String hql = "update User set userName ='"+u.getUserName()+"',userPass='"+u.getUserPass()+"'+userEmail='"+u.getUserEmail()+"' where userID='"+u.getUserID();
	Query<User> q = s1.createQuery(hql);
	int a=q.executeUpdate();
	System.out.println("Deleted: " +a+ " user(s)");
		return true;
	}

	public List<User> getAllUser() {
		
		Session s=sessionFactory.getCurrentSession();
		Query query=s.createQuery("from User");
		List<User> list=query.getResultList(); 
		return list;
	}

	public User getUserByID(Integer userID) {
		Session s1 =sessionFactory.getCurrentSession();
		Query<User> q = s1.createQuery("from User where userID="+userID);
	User	user = (User)q.getSingleResult();
	return user;
	}*/

}
