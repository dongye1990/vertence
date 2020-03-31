package com.vertence.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vertence.model.User;
import com.vertence.service.UserService;
import com.vertence.util.MailUtil;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "")
public class LoginController {
	
	@Autowired
	private UserService userService;
	
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
	
	@ResponseBody
	@RequestMapping(value = "/register")
	public int login(Model model,@RequestParam(value = "email") String email,@RequestParam(value = "code") String code,
			@RequestParam(value = "username") String username,@RequestParam(value = "password") String password,
			@RequestParam(value = "phone") String phone,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		String vcode = session.getAttribute("code")==null?"":session.getAttribute("code").toString();
		if(!vcode.equals(code)) {
			return 0;
		}
		User user = userService.selectByEmail(email);
		if(user!=null) {
			userService.del(user.getId());
		}
		user=new User();
		user.setName(username);
		user.setPassword(password);
		user.setPhone(phone);
		user.setEmail(email);
		user.setCreateTime(new Date());
		userService.insert(user);
		
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(email, password);
		subject.login(token);
		session.setAttribute("username", subject.getPrincipal());
		return 1;
	}
	
	@ResponseBody
	@RequestMapping(value = "/sendCode")
	public int login(Model model,@RequestParam(value = "email") String email,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String code = session.getAttribute("code")==null?"":session.getAttribute("code").toString();
		if(code==null||"".equals(code)) {
		     code=RandomStringUtils.randomNumeric(4);
		     session.setAttribute("code", code);
		}
    	MailUtil.send(email, "sinova verification code", "Verification code:"+code);
		return 1;
	}
}
