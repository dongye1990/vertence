/**
 * 
 */
package com.vertence.model;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.joda.time.DateTime;

import com.vertence.util.Utils;

/** 
 * @ClassName: News 
 * @author dongye
 * @date 2017年9月2日 下午12:41:16  
 */
public class News {
	private Integer id;
	private Integer type;
	private String title;
	private String content;
	private Integer status;
	private Integer count;
	private Date createTime;
	private Date updateTime;
	private String year;
	private String month;
	private String day;
	private String simpleContent;
	
	
	@Override
	public String toString() {
		return "News [id=" + id + ", type=" + type + ", title=" + title
				+ ", content=" + content + ", status=" + status
				+ ", createTime=" + createTime + ", updateTime=" + updateTime
				+ "]";
	}



	public Integer getId() {
		return id;
	}
	
	



	public Integer getCount() {
		return count;
	}



	public void setCount(Integer count) {
		this.count = count;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public Integer getType() {
		return type;
	}



	public void setType(Integer type) {
		this.type = type;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public Integer getStatus() {
		return status;
	}



	public void setStatus(Integer status) {
		this.status = status;
	}



	public Date getCreateTime() {
		return createTime;
	}



	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}



	public Date getUpdateTime() {
		return updateTime;
	}



	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}



	public String getYear() {
		return new DateTime(updateTime).toString("yyyy");
	}



	public String getMonth() {
		return new DateTime(updateTime).toString("MM");
	}



	public String getDay() {
		return new DateTime(updateTime).toString("dd");
	}
	
	public String getSimpleContent() {
		return content!=null?Utils.delHTMLTag(content):"";
	}


	
	
	
	
	

}
