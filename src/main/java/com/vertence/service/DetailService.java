/**
 * 
 */
package com.vertence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.vertence.model.Detail;

/** 
 * @author dongye
 * @date 2017骞�9鏈�2鏃� 涓嬪崍12:42:31  
 */
@Service
public class DetailService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Detail> listAll(){
		String sql="select * from detail";
		List<Detail> detailList= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<Detail>(Detail.class));
		return detailList;
	}
	
	public Detail selectByPrimaryKey(int id){
		String sql="select * from detail where id=?";
		Detail detail= jdbcTemplate.query(sql, new Object[]{id},new BeanPropertyRowMapper<Detail>(Detail.class)).get(0);
		return detail;
	}

	public List<Detail> selectByDetailId(String detailid){
		String sql="select * from detail where `order`=?";
		List<Detail> query = jdbcTemplate.query(sql, new Object[]{detailid},new BeanPropertyRowMapper<Detail>(Detail.class));
		return query;
	}
	public int insertOrUpdate(Detail detail){
		String sql;
		if(detail.getId()==null){
			sql="insert INTO detail VALUE(null,?,?,?,sysdate())";
		}else {
			sql="update detail set `order`=?,title=?,`time`=? where id="+detail.getId();
		}
		return jdbcTemplate.update(sql,new Object[]{detail.getOrder(),detail.getTitle(),detail.getTime()});
	}
	public int del(Integer id){
		String sql="delete from detail where id=?";
		return jdbcTemplate.update(sql,new Object[]{id});
	}
}
