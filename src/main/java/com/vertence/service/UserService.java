/**
 * 
 */
package com.vertence.service;

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
	
	public User selectByEmail(String email){
		String sql="select * from sv_user where email='"+email+"'";
		System.out.println(sql);
		User user= jdbcTemplate.query(sql, new Object[]{},new BeanPropertyRowMapper<User>(User.class)).get(0);
		return user;
	}
	public int insert(User user){
		String sql="INSERT INTO sv_user(name,email,phone,password,create_time) VALUES ('"+user.getName()+"','"+user.getEmail()+"',"
				+ "'"+user.getPhone()+"','"+user.getPassword()+"',SYSDATE())";
		return jdbcTemplate.update(sql);
	}

}
