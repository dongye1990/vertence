package com.vertence.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "")
public class LoginController {
	
	@RequestMapping(value = "/backend/main")
	public String main() {
		return "redirect:/backend/user/list";
	}
	
	@RequestMapping(value = "/backend/logout")
	public String logout() {
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();
		return "redirect:/backend";
	}

	@ResponseBody
	@RequestMapping(value = "/doLogin")
	public int login(Model model,@RequestParam(value = "email") String email,@RequestParam(value = "password") String password,HttpServletRequest request) {
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(email, password);
		try {
			subject.login(token);
			Session session=subject.getSession();
			session.setAttribute("username", subject.getPrincipal());
			if(subject.getPrincipal().toString().startsWith("admin")) {
				return 2;
			}else {
				return 1;
			}
		} catch (Exception ex) {
			return 0;
		}
	}
	
}
