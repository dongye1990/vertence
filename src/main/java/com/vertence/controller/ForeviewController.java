package com.vertence.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vertence.model.Attachment;
import com.vertence.model.Detail;
import com.vertence.model.News;
import com.vertence.service.AttachmentService;
import com.vertence.service.DetailService;
import com.vertence.service.NewsService;
import com.vertence.service.ProductService;
import com.vertence.service.SearchService;
import com.vertence.util.MailUtil;
import com.vertence.util.Utils;
import com.vertence.vo.MailInfo;
import com.vertence.vo.SearchVo;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/")
public class ForeviewController {
	
	@Autowired
	private NewsService newsService;
	@Autowired
	private ProductService productService;
	@Autowired
	private AttachmentService attachmentService;
	@Autowired
	private DetailService detailService;
	
	@RequestMapping(value = "/index")
	public String main(Model model) {
		 return "redirect:/";
	}
	@RequestMapping(value = "/")
	public String index(Model model) {
		Subject subject=SecurityUtils.getSubject();
		List<News> newsList=newsService.listNews();
		model.addAttribute("newsList", newsList);
		return "/sinova/index";
	}
	@RequestMapping(value = "/page")
	public String page(Model model,String page) {
		Subject subject=SecurityUtils.getSubject();
		return "/sinova/"+page;
	}
	@RequestMapping(value = "/toRegister")
	public String toRegister(Model model,String email) {
		model.addAttribute("email", email);
		return "/sinova/register";
	}
	@RequestMapping(value = "/login")
	public String page(Model model) {
		Subject subject=SecurityUtils.getSubject();
		return "/sinova/login";
	}
	@RequestMapping(value = "/product")
	public String product(Model model,Integer product) {
		model.addAttribute("news", productService.selectByPrimaryKey(product));
		return "/sinova/product/products";
	}
	@RequestMapping(value = "/sd")
	public String sd(Model model,String id) {
		if("news".equals(id)) {
			List<News> newsList=newsService.listNews(null);
			model.addAttribute("newsList", newsList);
		}
		return "/sinova/detail/"+id;
	}
	@RequestMapping(value = "/news")
	public String news(Model model,Integer id) {
		model.addAttribute("news", newsService.selectByPrimaryKey(id));
		return "/sinova/product/products";
	}
	@RequestMapping(value = "/logistics")
	public String logistics(Model model) {
		Subject subject=SecurityUtils.getSubject();
		if(subject.isAuthenticated()) {
			return "/sinova/detail/logistics";
		}else {
			return "/sinova/login";
		}
	}
	@RequestMapping(value = "/search")
	public Object search(Model model,String order) {
		List<Detail> detailList = detailService.selectByDetailId(order);
		model.addAttribute("detailList", detailList);
		model.addAttribute("order", order);
		return "/sinova/detail/logistics";
	}
	@RequestMapping(value = "/newsdetail")
	public String index(Model model,int id) {
		List<Attachment> attachmentList = attachmentService.selectByForeignid(id,Attachment.newsType);
		News news=newsService.selectByPrimaryKey(id);
		model.addAttribute("news", news);
		model.addAttribute("attachmentList", attachmentList);
		return "/foreview/news/newsdetail";
	}
	@RequestMapping(value = "/newslist")
	public String newslist(Model model,Integer page) {
		Subject subject=SecurityUtils.getSubject();
		List<News> newsList=newsService.listNews(page);
		int count=newsService.countNews();
		model.addAttribute("newsList", newsList);
		model.addAttribute("count", count);
		model.addAttribute("page", page==null?0:page);
		return "/foreview/news/newslist";
	}
	@RequestMapping(value = "/projects")
	public String projects() {
		return "/foreview/project/projects";
	}
	@RequestMapping(value = "/mail")
	public String mail() {
		return "/foreview/mail/mail";
	}
}
