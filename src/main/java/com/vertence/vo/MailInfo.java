/**
 * 
 */
package com.vertence.vo;

import java.util.List;

import org.apache.commons.mail.EmailAttachment;

/** 
 * @ClassName: MailInfo 
 * @author dongye
 * @date 2017年9月12日 下午1:49:27  
 */
public class MailInfo {
    private String toAddress;
    // 邮件主题
    private String subject;
    // 邮件的文本内容
    private String content;
    
	public String getToAddress() {
		return toAddress;
	}
	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}


  

}
