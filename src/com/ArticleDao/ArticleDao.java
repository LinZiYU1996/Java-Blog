package com.ArticleDao;

import java.util.List;

import com.Article.Article;

public interface ArticleDao {
	
	
	public void save_article(Article article);
	
	public List<Article> getAllArticle();
	
	public Article getArticle(String id);

}
