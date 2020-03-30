/**
 * 
 */
package com.vertence.model;

import java.util.Date;

/** 
 * @ClassName: News 
 * @author dongye
 * @date 2017Âπ?9Êú?2Êó? ‰∏ãÂçà12:41:16  
 */
public class User {
	private Integer id;
	private String name;
	private String email;
	private String phone;
	private String password;
	private Date createTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	
	


}
