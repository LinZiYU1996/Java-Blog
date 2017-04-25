package com.Web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Comment.Comment;
import com.CommentDao.CommentDao;


@Controller
@RequestMapping("/blog")

public class Comments {
		@Resource
		CommentDao commentDao;

		public void setCommentDao(CommentDao commentDao) {
			this.commentDao = commentDao;
		}
		
		
		@RequestMapping("/save_comm")
		public String save_comm(Comment comment){
			commentDao.save(comment);
			return "redirect:/blog/getall?user="+comment.getCommenter();
		}
	
		@RequestMapping("/getall_comm")
		public String getallComment(String author,Model model){
			List<Comment> comments = commentDao.getAllComment(author);
			model.addAttribute("comments",comments);
			return "dis_comm";
			
			
		}
}
