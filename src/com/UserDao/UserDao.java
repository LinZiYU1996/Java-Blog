package com.UserDao;

import java.util.List;

import com.User.User;

public interface UserDao {
	
	public List check(User user);
	
	public String register(User user);
}
