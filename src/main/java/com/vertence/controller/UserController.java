package com.vertence.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vertence.model.News;
import com.vertence.model.User;
import com.vertence.service.NewsService;
import com.vertence.service.UserService;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/backend/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request,Model model) {
		List<User> userList=userService.listAll();
		model.addAttribute("userList", userList);
		return "/backend/user/list";
	}
	@RequestMapping(value = "/toEdit")
	public String toEdit(Model model,int id) {
		model.addAttribute("user", userService.selectByPrimaryKey(id));
		model.addAttribute("index", 1);
		return "/backend/user/edit";
	}
	@ResponseBody
	@RequestMapping(value = "/edit")
	public int edit(Integer id,Integer status) {
		User user=new User();
		user.setId(id);
		user.setStatus(status);
		int count=userService.insertOrUpdate(user);
		return count;
	}
	
}
