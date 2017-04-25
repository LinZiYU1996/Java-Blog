package com.CommentDao;

import java.util.List;

import com.Comment.Comment;

public interface CommentDao {
	
	public void save(Comment comment);
	public List<Comment> getAllComment(String author);
	
}
