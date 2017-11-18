package com.vertence.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vertence.ueditor.ActionEnter;
import com.vertence.model.Attachment;
import com.vertence.service.AttachmentService;


/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/backend/file")
public class FileController {
//	private String filePath="/export/servers/tomcat-report/file";
	
	@Autowired
	private AttachmentService attachmentService;
	
	@RequestMapping(value = "/toUpload")
	public String upload(@RequestParam("foreignid") Integer foreignid,@RequestParam("type") Integer type,HttpServletRequest request, Model model) {
		List<Attachment> attachmentList = attachmentService.selectByForeignid(foreignid,type);
		model.addAttribute("attachmentList", attachmentList);
		model.addAttribute("foreignid", foreignid);
		model.addAttribute("type", type);
		return "/backend/upload";
	}
	
	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String doUploadFile(@RequestParam("attrFile") MultipartFile attrFile,@RequestParam("foreignid") Integer foreignid,
			@RequestParam("type") Integer type,HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String filePath=request.getSession().getServletContext().getRealPath("/static/upload/file");
		if(!new File(filePath).exists())   {
		    new File(filePath).mkdirs();
		  }
		if (!attrFile.isEmpty()) {
			Attachment attachment=new Attachment();
			attachment.setType(type);
			attachment.setForeignid(foreignid);
			attachment.setFilename(attrFile.getOriginalFilename());
			attachment.setSavename(UUID.randomUUID().toString().replaceAll("-", "")+attachment.getFilename().substring(attachment.getFilename().indexOf(".")));
			FileUtils.copyInputStreamToFile(attrFile.getInputStream(),new File(filePath,attachment.getSavename()));
			attachmentService.insert(attachment);
		}
		return "success";
	}
    @RequestMapping(value = "/export")
    public void index(@RequestParam("id") Integer id,HttpServletRequest request, HttpServletResponse response){
		String filePath=request.getSession().getServletContext().getRealPath("/static/upload/file");
		if(!new File(filePath).exists())   {
		    new File(filePath).mkdirs();
		  }
    	try {
    		Attachment attachment=attachmentService.selectById(id);
    		 // 获取服务其上的文件名称
            StringBuffer sb = new StringBuffer();
            sb.append("attachment;  filename=").append(attachment.getFilename());
            response.setHeader("Expires", "0");
            response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
            response.setHeader("Pragma", "public");
            response.setContentType("application/x-msdownload;charset=UTF-8");
            response.setHeader("Content-Disposition", new String(sb.toString().getBytes(), "ISO8859-1"));
            FileInputStream inputStream = new FileInputStream(filePath+attachment.getSavename());
            OutputStream outputStream = response.getOutputStream();
            byte[] buffer = new byte[1024];
            int i = -1;
            while ((i = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, i);
            }
            outputStream.flush();
            outputStream.close();
            inputStream.close();
		} catch (Exception e) {
		}
    	
    }
	@ResponseBody
	@RequestMapping(value = "/del")
	public int del(HttpServletRequest request,Integer id) {
		int count=attachmentService.del(id);
		return count;
	}
	public static void main(String[] args) {
		for (int i = 0; i <21; i++) {
			System.out.println(UUID.randomUUID().toString().replaceAll("-", ""));
			
		}
	}
}