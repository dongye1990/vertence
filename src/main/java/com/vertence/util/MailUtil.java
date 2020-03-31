/**
 * 
 */
package com.vertence.util;


import org.apache.commons.mail.HtmlEmail;

/**
 * 鍙戦�侀偖浠禪til
 */
public class MailUtil {
    
	private static String mailServerHost="smtp.qq.com";
	private static String mailSenderAddress="dongye211344@qq.com";
	private static String mailSenderNick="sinova";
	private static String mailSenderUsername="dongye211344@qq.com";
	private static String mailSenderPassword="themdgmdvdonbdjd";
	
	public static void send(String to,String subject,String htmlMsg) {
		try {
			HtmlEmail email = new HtmlEmail();
//			email.setSocketTimeout(EmailConstants.SOCKET_TIMEOUT_MS*20);
//			email.setSocketConnectionTimeout(EmailConstants.SOCKET_TIMEOUT_MS*20);
			email.setHostName(mailServerHost);
			email.setFrom(mailSenderAddress, mailSenderNick);
			email.setAuthentication(mailSenderUsername, mailSenderPassword);
			email.setSmtpPort(465);
			email.setSSLOnConnect(true);
			email.setCharset("UTF-8");
			email.setSubject(subject);
			email.setHtmlMsg(htmlMsg);
			email.addTo(to.split(","));
			email.send();
		} catch (Exception e) {
			e.printStackTrace();
//			LOGGER.error("qqMailSendProcessor error,Msgqueue:{},Toer:{}", msg.getMsgqueue(), msg.getToer(), e);
		}
	}
}