package com.Web;

import java.util.List;


import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.Article.Article;
import com.ArticleDao.ArticleDao;



@Controller
@RequestMapping("/blog")
public class Manager_A {
	@Resource
	ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}
	
	
	
	@RequestMapping("/getall")
	
	public String getAllArticle(String user,Model model) {
		List<Article> articles  =  articleDao.getAllArticle();
		model.addAttribute("ars",articles);
		model.addAttribute("user",user);
		return "index";
		
	}
	
	
	

	
	@RequestMapping("/save_article")
	public ModelAndView save_article(Article article){
		articleDao.save_article(article);
		return new ModelAndView("redirect:/blog/getall");
			
	}
	
	@RequestMapping("/getarticle")
	public String getArticle(String id,Model model,String user){
		Article article = articleDao.getArticle(id);
		model.addAttribute("article",article);
		model.addAttribute("user",user);
		
		return "display_article";
	}

}
