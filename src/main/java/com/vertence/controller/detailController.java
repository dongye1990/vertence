package com.vertence.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vertence.model.Detail;
import com.vertence.service.DetailService;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/backend/detail")
public class detailController {
	
	@Autowired
	private DetailService detailService;
	
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request,Model model) {
		List<Detail> detailList=detailService.listAll();
		model.addAttribute("detailList", detailList);
		return "/backend/detail/list";
	}
	
	
	@RequestMapping(value = "/toAdd")
	public String toAdd(Model model,int index) {
		model.addAttribute("index", index);
		return "/backend/detail/edit";
	}
	@RequestMapping(value = "/toEdit")
	public String toEdit(Model model,int id) {
		model.addAttribute("detail", detailService.selectByPrimaryKey(id));
		model.addAttribute("index", 1);
		return "/backend/detail/edit";
	}
	@ResponseBody
	@RequestMapping(value = "/edit")
	public int edit(Integer id,Integer type,String detailid,String title,String content,Integer status) {
		Detail detail=new Detail();
		detail.setId(id);
		detail.setDetailid(detailid);
		detail.setType(type);
		detail.setTitle(title);
		detail.setContent(content);
		int count=detailService.insertOrUpdate(detail);
		return count;
	}
	@ResponseBody
	@RequestMapping(value = "/del")
	public int del(HttpServletRequest request,Integer id) {
		int count=detailService.del(id);
		return count;
	}
	@RequestMapping(value = "/view")
	public String view(Model model,int id) {
		model.addAttribute("detail", detailService.selectByPrimaryKey(id));
		return "/backend/detail/view";
	}
}
