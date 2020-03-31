/**
 * 
 */
package com.vertence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.vertence.model.User;

/** 
 * @ClassName: NewsService 
 * @author dongye
 * @date 2017Âπ?9Êú?2Êó? ‰∏ãÂçà12:42:31  
 */
@Service
public class UserService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<User> listAll(){
		String sql="select * from sv_user ";
		List<User> newsList= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<User>(User.class));
		return newsList;
	}
	
	public User selectByEmail(String email){
		String sql="select * from sv_user where email='"+email+"'";
		List<User> query = jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<User>(User.class));
		User user= (query==null||query.isEmpty())?null:query.get(0);
		return user;
	}
	public int insert(User user){
		String sql="INSERT INTO sv_user(name,email,phone,password,create_time) VALUES ('"+user.getName()+"','"+user.getEmail()+"',"
				+ "'"+user.getPhone()+"','"+user.getPassword()+"',SYSDATE())";
		return jdbcTemplate.update(sql);
	}
	
	public int del(Integer id){
		String sql="delete from sv_user where id="+id;
		return jdbcTemplate.update(sql);
	}

}
