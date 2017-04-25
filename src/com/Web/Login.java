package com.Web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.User.User;
import com.UserDao.UserDao;






@Controller
@RequestMapping("/blog")

public class Login {
	@Resource
	UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@RequestMapping("/check")
	public String check(User user,Model model) {
		List list = userDao.check(user);
		if (list.size()>0) {
			
			 return"redirect:/blog/getall?user="+user.getName();
		}
		
		return "no";
	
	}

}
