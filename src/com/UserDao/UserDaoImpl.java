package com.UserDao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.User.User;

public class UserDaoImpl implements UserDao{
	
	SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List check(User user) {
			
		String hql = "select user.name ,user.password from User as user where user.name='"+
		user.getName()+"' and user.password ='"+user.getPassword()+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List list = query.list();
		return list;
		
	}


	@Override
	public String register(User user) {
		sessionFactory.getCurrentSession().save(user);
		return "index";
	}
	
	
		
}
