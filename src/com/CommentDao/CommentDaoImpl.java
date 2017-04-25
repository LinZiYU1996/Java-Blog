package com.CommentDao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.Comment.Comment;

public class CommentDaoImpl implements CommentDao{
	
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void save(Comment comment) {
		sessionFactory.getCurrentSession().save(comment);
		
	}

	@Override
	public List<Comment> getAllComment(String author) {
		String hql = "select c.contents from Comment as c where c.be_commenter='"+author+"'";
//		"select user.name ,user.password from User as user where user.name='"+name+"' and user.password ='"+password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
	}
	
	
	
	
	
	
}
