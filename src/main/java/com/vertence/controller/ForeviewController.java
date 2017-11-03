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
	private DetailService detailService;
	@Autowired
	private AttachmentService attachmentService;
	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		Subject subject=SecurityUtils.getSubject();
		Session session=subject.getSession();
		if(session.getAttribute("language")==null){
			session.setAttribute("language", 0);
		}
		List<News> newsList=newsService.listNews(session.getAttribute("language").toString());
		model.addAttribute("newsList", newsList);
		return "/foreview/index";
	}
	@RequestMapping(value = "/language")
	public String language(Model model,Integer type) {
		Session session=SecurityUtils.getSubject().getSession();
		session.setAttribute("language", type);
		return "redirect:/";
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
		Session session=subject.getSession();
		String language=session.getAttribute("language")==null?"0":
			session.getAttribute("language").toString();
		List<News> newsList=newsService.listNews(language,page);
		int count=newsService.countNews(language);
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
	@ResponseBody
	@RequestMapping(value = "/mainSend")
	public int edit(String name,String gender,String country,String city,
			String companyName,String email,String producttype,String location,String content) {
    	MailInfo mailInfo=new MailInfo();
    	mailInfo.setSubject((new DateTime()).toString("yyyyMMddHHmmss")+"-"+producttype+"-"+location);
    	mailInfo.setContent("<span style='font-size: 20px;font-weight: bold;display: inline-block;margin-left: 25px;'>Email support</span><br/>"+
    			"<span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>Name:&nbsp;&nbsp;&nbsp;&nbsp;"+name+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>gender:&nbsp;&nbsp;&nbsp;&nbsp;"+gender+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>country:&nbsp;&nbsp;&nbsp;&nbsp;"+country+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>city:&nbsp;&nbsp;&nbsp;&nbsp;"+city+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>companyName:&nbsp;&nbsp;&nbsp;&nbsp;"+companyName+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>email:&nbsp;&nbsp;&nbsp;&nbsp;"+email+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>producttype:&nbsp;&nbsp;&nbsp;&nbsp;"+producttype+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;'>location:&nbsp;&nbsp;&nbsp;&nbsp;"+location+
    			"</span><br/><span style='font-size: 14px;color: #000;display: inline-block;margin-left: 20px;''>content:&nbsp;&nbsp;&nbsp;&nbsp;"+content+"</span>");
    	mailInfo.setToAddress("879651180@qq.com");
    	MailUtil.sendEmail(mailInfo);
		return 1;
	}
	@RequestMapping(value = "/products")
	public String products(Model model,Integer type) {
		model.addAttribute("type", type);
		return "/foreview/product/products";
	}
	@RequestMapping(value = "/search")
	public String search(Model model,String text) {
		List<SearchVo> searchVoList=searchService.searchByParm(text);
		for (SearchVo vo:searchVoList) {
			vo.setTitle(vo.getTitle().replaceAll(text, "<span style='color:red'>"+text+"</span>"));
			vo.setContent(Utils.delHTMLTag(vo.getContent()).replaceAll(text, "<span style='color:red'>"+text+"</span>"));
		}
		model.addAttribute("searchVoList", searchVoList);
		return "/foreview/search/search";
	}
	@RequestMapping(value = "/searchDetail")
	public String searchDetail(Model model,String id) {
		model.addAttribute("id", id);
		if(id.length()>15){
			return "forward:/detail"; 
		}else{
			return "forward:/newsdetail"; 
		}
	}
	@RequestMapping(value = "/detail")
	public String detail(Model model,String id) {
		Session session=SecurityUtils.getSubject().getSession();
		String language=session.getAttribute("language")==null?"0":
			session.getAttribute("language").toString();
		Detail detail=detailService.selectByDetailId(id,language);
		if(detail!=null){
			List<Attachment> attachmentList = attachmentService.selectByForeignid(detail.getId(),Attachment.detailType);
			model.addAttribute("attachmentList", attachmentList);
		}
		model.addAttribute("detail", detail);
		return "/foreview/detail";
	}
	@RequestMapping(value = "/video")
	public String video(Model model,String id) {
		Session session=SecurityUtils.getSubject().getSession();
		String language=session.getAttribute("language")==null?"0":session.getAttribute("language").toString();
		Detail detail=detailService.selectByDetailId(id,language);
		if(detail!=null){
			List<Attachment> attachmentList = attachmentService.selectByForeignid(detail.getId(),Attachment.detailType);
			model.addAttribute("attachmentList", attachmentList);
		}
		model.addAttribute("detail", detail==null?new Detail():detail);
		return "/foreview/video/video";
	}
}
