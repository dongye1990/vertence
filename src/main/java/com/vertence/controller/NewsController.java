package com.vertence.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vertence.model.News;
import com.vertence.service.NewsService;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/backend/news")
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request,Model model) {
		List<News> newsList=newsService.listAll();
		model.addAttribute("newsList", newsList);
		return "/backend/news/list";
	}
	
	@RequestMapping(value = "/foreshow")
	public String foreshow(HttpServletRequest request,Model model,int type) {
		List<News> newsList=newsService.listNews(null);
		model.addAttribute("newsList", newsList);
		return "/backend/news/foreshow";
	}
	
	@RequestMapping(value = "/toAdd")
	public String toAdd(Model model,int index) {
		model.addAttribute("index", index);
		return "/backend/news/edit";
	}
	@RequestMapping(value = "/toEdit")
	public String toEdit(Model model,int id) {
		model.addAttribute("news", newsService.selectByPrimaryKey(id));
		model.addAttribute("index", 1);
		return "/backend/news/edit";
	}
	@ResponseBody
	@RequestMapping(value = "/edit")
	public int edit(Integer id,Integer type,String title,String content,Integer status) {
		News news=new News();
		news.setId(id);
		news.setType(type);
		news.setTitle(title);
		news.setContent(content);
		news.setStatus(status);
		System.out.println(news);
		int count=newsService.insertOrUpdate(news);
		return count;
	}
	@ResponseBody
	@RequestMapping(value = "/del")
	public int del(HttpServletRequest request,Integer id) {
		int count=newsService.del(id);
		return count;
	}
	@RequestMapping(value = "/view")
	public String view(Model model,int id) {
		model.addAttribute("news", newsService.selectByPrimaryKey(id));
		return "/backend/news/view";
	}
}
