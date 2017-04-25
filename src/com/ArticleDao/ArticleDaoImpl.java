package com.ArticleDao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.Article.Article;

public class ArticleDaoImpl implements ArticleDao{

	SessionFactory sessionFactory;
	
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void save_article(Article article) {
		sessionFactory.getCurrentSession().save(article);
		
	}

	@Override
	public List<Article> getAllArticle() {
		String hql = "from Article";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Article> lists = query.list();
		return lists;
	}

	@Override
	public Article getArticle(String id) {
		String hql = "from Article a where a.id=?";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setString(0, id);
		
		return (Article) query.uniqueResult();
	}
		
}
