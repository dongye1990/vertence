/**
 * 
 */
package com.vertence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.vertence.model.Attachment;

/** 
 * @author dongye
 * @date 2017年9月2日 下午12:42:31  
 */
@Service
public class AttachmentService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Attachment selectById(int id){
		String sql="select * from attachment where id=?";
		System.out.println(sql+":"+id);
		return jdbcTemplate.query(sql, new Object[]{id},new BeanPropertyRowMapper<Attachment>(Attachment.class)).get(0);
	}
	public List<Attachment> selectByForeignid(int foreignid,int type){
		String sql="select * from attachment where foreignid=? and type=?";
		System.out.println(sql+":"+foreignid);
		return jdbcTemplate.query(sql, new Object[]{foreignid,type},new BeanPropertyRowMapper<Attachment>(Attachment.class));
	}
	public int insert(Attachment attachment){
		String sql="insert INTO attachment VALUE(null,?,?,?,?,sysdate())";
		System.out.println(sql);
		return jdbcTemplate.update(sql,new Object[]{attachment.getType(),attachment.getForeignid(),
				attachment.getFilename(),attachment.getSavename()});
	}
	public int del(Integer id){
		String sql="delete from attachment where id=?";
		System.out.println(sql+":"+id);
		return jdbcTemplate.update(sql,new Object[]{id});
	}

}
