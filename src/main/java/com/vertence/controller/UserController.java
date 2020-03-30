package com.vertence.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vertence.model.User;
import com.vertence.service.UserService;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/backend/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request,Model model) {
		List<User> userList=userService.listAll();
		model.addAttribute("userList", userList);
		return "/backend/user/list";
	}
	
}
