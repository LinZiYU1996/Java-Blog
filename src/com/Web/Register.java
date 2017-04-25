package com.Web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.User.User;
import com.UserDao.UserDao;





@Controller
@RequestMapping("/blog")
public class Register {
	@Resource
	UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@RequestMapping("/register")
	public String register(User user) {
		userDao.register(user);
		return "login";
		
	}

}
