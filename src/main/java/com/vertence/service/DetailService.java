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
 * @date 2017年9月2日 下午12:42:31  
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
	public Detail selectByDetailId(String detailid,String type){
		String sql="select * from detail where detailid=? and type=?";
		List<Detail> query = jdbcTemplate.query(sql, new Object[]{detailid,type},new BeanPropertyRowMapper<Detail>(Detail.class));
		Detail detail= query.size()==0?null:query.get(0);
		return detail;
	}
	public int insertOrUpdate(Detail detail){
		String sql;
		if(detail.getId()==null){
			sql="insert INTO detail VALUE(null,?,?,?,?,sysdate())";
		}else {
			sql="update detail set type=?,detailid=?,title=?,content=? where id=?";
		}
		return jdbcTemplate.update(sql,new Object[]{detail.getType(),detail.getDetailid(),
				detail.getTitle(),detail.getContent()});
	}
	public int del(Integer id){
		String sql="delete from detail where id=?";
		return jdbcTemplate.update(sql,new Object[]{id});
	}
}
