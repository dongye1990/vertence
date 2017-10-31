/**
 * 
 */
package com.vertence.util;


import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

import com.vertence.vo.MailInfo;

/**
 * 发送邮件Util
 */
public class MailUtil {
    
    //邮箱
    private static String mailServerHost = "smtp.exmail.qq.com";
    private static String mailSenderAddress = "mail@vertence.cn";
    private static String mailSenderNick = "Jiangsu Vertence Technology Limited";
    private static String mailSenderUsername = "mail@vertence.cn";
    private static String mailSenderPassword = "VERtence123";
    
    public static void main(String[] args) {
    	MailInfo mailInfo=new MailInfo();
    	mailInfo.setSubject("这是一个主题");
    	mailInfo.setContent("<span style='color:red'>这是内容</span>");
    	mailInfo.setToAddress("879651180@qq.com");
    	sendEmail(mailInfo);
	}
    /**
     * 发送 邮件方法 (Html格式，支持附件)
     */
    public static void sendEmail(MailInfo mailInfo) {
         
        try {
            HtmlEmail email = new HtmlEmail();
            email.setHostName(mailServerHost);
            email.setFrom(mailSenderAddress,mailSenderNick);
            email.setAuthentication(mailSenderUsername,mailSenderPassword);
            email.setCharset("UTF-8");  
            email.setSubject(mailInfo.getSubject());
            email.setHtmlMsg(mailInfo.getContent());
            email.addTo(mailInfo.getToAddress());
            email.send();
            System.out.println("邮件发送成功！");
        } catch (EmailException e) {
            e.printStackTrace();
        } 

    }
}