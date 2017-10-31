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
 * @author dongye
 * @date 2017年9月2日 下午12:41:16  
 */
public class Attachment {
	public final static int newsType=0;
	public final static int detailType=1;
	private Integer id;
	private Integer type;
	private Integer foreignid;
	private String filename;
	private String savename;
	private Date createTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getForeignid() {
		return foreignid;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public void setForeignid(Integer foreignid) {
		this.foreignid = foreignid;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getSavename() {
		return savename;
	}
	public void setSavename(String savename) {
		this.savename = savename;
	}
	public Date getCreateTime() {
		return createTime;
//		return new DateTime(createTime).toString("yyyy-MM-dd HH:mm:ss");
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	

}
